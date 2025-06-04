# Gleditsch-Ward list
# http://ksgleditsch.com/data/iisystem.dat
gwno_dat <- read.csv("utils/states_GleditschWard.csv") 
gwno_dat$statenme[gwno_dat$statenum==271] <- "Wuerttemberg"
gwno_dat$statenme[gwno_dat$statenum==403] <- "Sao Tome and Principe"
gwno_dat$statenme[gwno_dat$statenum==437] <- "Cote D'Ivoire"

countries <- c(240, 245, 255, 267, 269, 271, 273, 275, 280, 338, 352, 315, 316, 317, 344, 346, 349, 53, 80, 212, 385) 


dat <- readRDS("~/Documents/GitHub/gdppc_pop_gdp/gdppc_pop_gdp_estimates/estimates_gdppc_model_combined_normal_noslope_gamma_lambda_additive_test_202513.rds")

dat <- subset(dat, indicator=="Maddison2023_gdppc_ppp_bcbt" | indicator=="Apostolides_gdppc_ppp_bc_1990" | indicator=="Apostolides_gdppc_ppp_bc_2005" | indicator=="GoodMa_gdppc_ppp_bcbt_2011" | indicator=="Schulze_gdppc_ppp_bc_1990" | indicator=="Treisman_gdppc_ppp_bcbt_2011")

dat$dat_color <- NA
dat$dat_color[dat$indicator=="Maddison2023_gdppc_ppp_bcbt"]  <- 1
dat$dat_color[dat$indicator=="Apostolides_gdppc_ppp_bc_1990"]  <- 2
dat$dat_color[dat$indicator=="Apostolides_gdppc_ppp_bc_2005"]  <- 2
dat$dat_color[dat$indicator=="GoodMa_gdppc_ppp_bcbt_2011"]  <- 3
dat$dat_color[dat$indicator=="Schulze_gdppc_ppp_bc_1990"]  <- 4
dat$dat_color[dat$indicator=="Treisman_gdppc_ppp_bcbt_2011"]  <- 5

table(dat$dat_color, dat$indicator)

#countries <- unique(dat$gwno)

dat$og_log <- log(dat$og)
dat$og_log10 <- log10(dat$og)
#dat$unit_Zscore <- (dat$mean_log - dat$og_log) / dat$sd_log
dat$unit_Zscore <- (dat$mean_log10 - dat$og_log10) / dat$sd_log10


indicator_names <- unique(dat$indicator)

dat$out_scale <- NA
dat$out_scale_sd <- NA
dat$out_scale_og <- NA

for(i in 1:length(indicator_names)){
  temp_scale <- scale(dat$mean_log10[dat$indicator==paste(indicator_names[i])])
  dat$out_scale[dat$indicator==paste(indicator_names[i])] <- temp_scale
  dat$out_scale_og[dat$indicator==paste(indicator_names[i])] <- (dat$og_log10[dat$indicator==paste(indicator_names[i])] - attr(temp_scale,"scaled:center"))/attr(temp_scale,"scaled:scale")
  dat$out_scale_sd[dat$indicator==paste(indicator_names[i])] <- dat$sd_log10[dat$indicator==paste(indicator_names[i])]/attr(temp_scale,"scaled:scale")
  
}

summary(dat)


pdf("plots/gdppc_standardized_constant_Rplots_20250604.pdf", width=6, height=6)

for(j in 1:length(countries)){
  state_selection <- countries[j]
  
  temp <- subset(dat, gwno==state_selection)
  
  
  out_scale <- temp$out_scale[temp$indicator=="Maddison2023_gdppc_ppp_bcbt"]
  out_scale_sd <- temp$out_scale_sd[temp$indicator=="Maddison2023_gdppc_ppp_bcbt"]
  out_scale_og <- temp$out_scale_og[temp$indicator=="Maddison2023_gdppc_ppp_bcbt"]
  
  
  par(mar=c(4,4,2,.25))
  plot(out_scale, type="n", xaxt="n", ylab="", xlab="", ylim=c(min(out_scale, temp$out_scale_og, na.rm=T)-.5, max(out_scale, temp$out_scale_og, na.rm=T)+.5))
  
  #abline(h=seq(-8,8,.5), col=grey(.5), lty=5, lwd=.75)
  #abline(h=seq(-8,8,1), col=grey(.5), lty=5, lwd=.75)
  
 mtext(side=2, line=2.5, text="Normalized Scale for Constant Dollar Indicators", cex=1.25)
  mtext(side=3, line=.5, text=paste(gwno_dat$statenme[gwno_dat$statenum==state_selection][1]), cex=1.25)
  
  ## posterior distributions
  for(i in 1:length(out_scale_sd)){
    lines(c(i,i), c(out_scale[i]+out_scale_sd[i], out_scale[i]-out_scale_sd[i]), lwd=3, col=grey(.85))
  }
  
  ## posterior point estimate
  lines(out_scale, col=grey(.75), lwd=1.5)
  
  indicator_names <- unique(dat$indicator)
  
  for(i in 1:length(indicator_names)){
    out_scale <- temp$out_scale[temp$indicator==paste(indicator_names[i])]
    out_scale_og <- temp$out_scale_og[temp$indicator==paste(indicator_names[i])]
    color_out <- temp$dat_color[temp$indicator==paste(indicator_names[i])]
    points(out_scale_og, col=color_out, pch="+")
  }
  
  axis(side=1, at=1:length(temp$year[temp$indicator=="Maddison2023_gdppc_ppp_bcbt"]), labels=temp$year[temp$indicator=="Maddison2023_gdppc_ppp_bcbt"], las=2)
}

dev.off()
