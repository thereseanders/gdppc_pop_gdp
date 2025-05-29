test <- readRDS("~/Documents/GitHub/gdppc_pop_gdp/gdppc_pop_gdp_estimates/estimates_gdppc_model_combined_normal_noslope_gamma_lambda_additive_test_202513.rds")

unique(test$indicator)
#> unique(test$indicator)
#[1] "Apostolides_gdppc_ppp_bc_1990"     "Apostolides_gdppc_ppp_bc_2005"    
#[3] "Treisman_gdppc_ppp_bcbt_2011"      "Schulze_gdppc_ppp_bc_1990"        
#[5] "GoodMa_gdppc_ppp_bcbt_2011"        "Bairoch_gdppc_ppp_bc_1960"        
#[7] "BroadberryKlein_gdppc_ppp_bc_1990" "Broadberry_gdppc_ppp_bc_1990"     
#[9] "MW_gdppc_con_bc_2010"              "Maddison2018_gdppc_ppp_bc_2011"   
#[11] "Maddison2018_gdppc_ppp_bt_2011"    "Maddison2023_gdppc_ppp_bcbt"      
#[13] "UScensus_gdppc_con_none_1958"      "WorldBank_gdppc_con_bc_2015"      
#[15] "WorldBank_gdppc_ppp_bc_2021"       "latent_gdppc"  

##########
Apostolides_gdppc_ppp_bc_1990 <- subset(test, indicator=="Apostolides_gdppc_ppp_bc_1990")
Apostolides_gdppc_ppp_bc_2005 <- subset(test, indicator=="Apostolides_gdppc_ppp_bc_2005")
plot(Apostolides_gdppc_ppp_bc_1990$year, Apostolides_gdppc_ppp_bc_1990$mean_log10)
#points(Apostolides_gdppc_ppp_bc_2005$year, Apostolides_gdppc_ppp_bc_2005$mean_log10, col=3)
points(Apostolides_gdppc_ppp_bc_1990$year, Apostolides_gdppc_ppp_bc_1990$og_log10, col=2)


Apostolides_gdppc_ppp_bc_2005 <- subset(test, indicator=="Apostolides_gdppc_ppp_bc_2005")
plot(Apostolides_gdppc_ppp_bc_2005$year, Apostolides_gdppc_ppp_bc_2005$mean_log10)
points(Apostolides_gdppc_ppp_bc_2005$year, Apostolides_gdppc_ppp_bc_2005$og_log10, col=2)

Treisman_gdppc_ppp_bcbt_2011 <- subset(test, indicator=="Treisman_gdppc_ppp_bcbt_2011")
plot(Treisman_gdppc_ppp_bcbt_2011$year, Treisman_gdppc_ppp_bcbt_2011$mean_log10)
points(Treisman_gdppc_ppp_bcbt_2011$year, Treisman_gdppc_ppp_bcbt_2011$og_log10, col=2)

Schulze_gdppc_ppp_bc_1990 <- subset(test, indicator=="Schulze_gdppc_ppp_bc_1990")
plot(Schulze_gdppc_ppp_bc_1990$year, Schulze_gdppc_ppp_bc_1990$mean_log10)
points(Schulze_gdppc_ppp_bc_1990$year, Schulze_gdppc_ppp_bc_1990$og_log10, col=2)

GoodMa_gdppc_ppp_bcbt_2011 <- subset(test, indicator=="GoodMa_gdppc_ppp_bcbt_2011")
plot(GoodMa_gdppc_ppp_bcbt_2011$year, GoodMa_gdppc_ppp_bcbt_2011$mean_log10)
points(GoodMa_gdppc_ppp_bcbt_2011$year, GoodMa_gdppc_ppp_bcbt_2011$og_log10, col=2)


##########
Apostolides_gdppc_ppp_bc_1990 <- subset(test, indicator=="Apostolides_gdppc_ppp_bc_1990" & !is.na(og))
plot(Apostolides_gdppc_ppp_bc_1990$og_log10, Apostolides_gdppc_ppp_bc_1990$mean_log10)
abline(a=0,b=1, col=2)

Apostolides_gdppc_ppp_bc_2005 <- subset(test, indicator=="Apostolides_gdppc_ppp_bc_2005" & !is.na(og))
plot(Apostolides_gdppc_ppp_bc_2005$og_log10, Apostolides_gdppc_ppp_bc_2005$mean_log10)
abline(a=0,b=1,col=2)

Treisman_gdppc_ppp_bcbt_2011 <- subset(test, indicator=="Treisman_gdppc_ppp_bcbt_2011" & !is.na(og))
plot(Treisman_gdppc_ppp_bcbt_2011$og_log10, Treisman_gdppc_ppp_bcbt_2011$mean_log10)
abline(a=0,b=1,col=2)

Schulze_gdppc_ppp_bc_1990 <- subset(test, indicator=="Schulze_gdppc_ppp_bc_1990" & !is.na(og))
plot(Schulze_gdppc_ppp_bc_1990$og_log10, Schulze_gdppc_ppp_bc_1990$mean_log10)
abline(a=0,b=1,col=2)

GoodMa_gdppc_ppp_bcbt_2011 <- subset(test, indicator=="GoodMa_gdppc_ppp_bcbt_2011" & !is.na(og))
plot(GoodMa_gdppc_ppp_bcbt_2011$og_log10, GoodMa_gdppc_ppp_bcbt_2011$mean_log10)
abline(a=0,b=1,col=2)


##########
Bairoch_gdppc_ppp_bc_1960 <- subset(test, indicator=="Bairoch_gdppc_ppp_bc_1960" & !is.na(og))
plot(Bairoch_gdppc_ppp_bc_1960$og_log10, Bairoch_gdppc_ppp_bc_1960$mean_log10)
abline(a=0,b=1,col=2)

BroadberryKlein_gdppc_ppp_bc_1990 <- subset(test, indicator=="BroadberryKlein_gdppc_ppp_bc_1990" & !is.na(og))
plot(BroadberryKlein_gdppc_ppp_bc_1990$og_log10, BroadberryKlein_gdppc_ppp_bc_1990$mean_log10)
abline(a=0,b=1,col=2)

Broadberry_gdppc_ppp_bc_1990 <- subset(test, indicator=="Broadberry_gdppc_ppp_bc_1990" & !is.na(og))
plot(Broadberry_gdppc_ppp_bc_1990$og_log10, Broadberry_gdppc_ppp_bc_1990$mean_log10)
abline(a=0,b=1,col=2)

MW_gdppc_con_bc_2010 <- subset(test, indicator=="MW_gdppc_con_bc_2010" & !is.na(og))
plot(MW_gdppc_con_bc_2010$og_log10, MW_gdppc_con_bc_2010$mean_log10)
abline(a=0,b=1,col=2)

Maddison2018_gdppc_ppp_bc_2011 <- subset(test, indicator=="Maddison2018_gdppc_ppp_bc_2011" & !is.na(og))
plot(Maddison2018_gdppc_ppp_bc_2011$og_log10, Maddison2018_gdppc_ppp_bc_2011$mean_log10)
abline(a=0,b=1,col=2)

Maddison2018_gdppc_ppp_bt_2011 <- subset(test, indicator=="Maddison2018_gdppc_ppp_bt_2011" & !is.na(og))
plot(Maddison2018_gdppc_ppp_bt_2011$og_log10, Maddison2018_gdppc_ppp_bt_2011$mean_log10)
abline(a=0,b=1,col=2)

Maddison2023_gdppc_ppp_bcbt <- subset(test, indicator=="Maddison2023_gdppc_ppp_bcbt" & !is.na(og))
plot(Maddison2023_gdppc_ppp_bcbt$og_log10, Maddison2023_gdppc_ppp_bcbt$mean_log10)
abline(a=0,b=1,col=2)

UScensus_gdppc_con_none_1958 <- subset(test, indicator=="UScensus_gdppc_con_none_1958" & !is.na(og))
plot(UScensus_gdppc_con_none_1958$og_log10, UScensus_gdppc_con_none_1958$mean_log10)
abline(a=0,b=1,col=2)

WorldBank_gdppc_con_bc_2015 <- subset(test, indicator=="WorldBank_gdppc_con_bc_2015" & !is.na(og))
plot(WorldBank_gdppc_con_bc_2015$og_log10, WorldBank_gdppc_con_bc_2015$mean_log10)
abline(a=0,b=1,col=2)

WorldBank_gdppc_ppp_bc_2021 <- subset(test, indicator=="WorldBank_gdppc_ppp_bc_2021" & !is.na(og))
plot(WorldBank_gdppc_ppp_bc_2021$og_log10, WorldBank_gdppc_ppp_bc_2021$mean_log10)
abline(a=0,b=1,col=2)

