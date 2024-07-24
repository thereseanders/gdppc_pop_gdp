test <- readRDS("gdppc_pop_gdp_estimates/estimates_gdp_model_combined_normal_noslope_gamma_lambda_additive_test_20220215.rds")



table(test$indicator)


WorldBank_gdp_con_bc_2010  <- subset(test, indicator=="WorldBank_gdp_con_bc_2010" & year>=1960)
global_WorldBank_gdp_con_bc_2010_mean <- xtabs(mean ~ year, data=WorldBank_gdp_con_bc_2010)
global_WorldBank_gdp_con_bc_2010_og <- xtabs(og ~ year, data=WorldBank_gdp_con_bc_2010)
barplot(rbind(global_WorldBank_gdp_con_bc_2010_og, global_WorldBank_gdp_con_bc_2010_mean), beside=T)


WorldBank_gdp_ppp_bc_2017 <- subset(test, indicator=="WorldBank_gdp_ppp_bc_2017" & year>=1990)
global_WorldBank_gdp_ppp_bc_2017_mean <- xtabs(mean ~ year, data=WorldBank_gdp_ppp_bc_2017)
global_WorldBank_gdp_ppp_bc_2017_og <- xtabs(og ~ year, data=WorldBank_gdp_ppp_bc_2017)
barplot(rbind(global_WorldBank_gdp_ppp_bc_2017_og, global_WorldBank_gdp_ppp_bc_2017_mean), beside=T)


##########
WorldBank_gdp_con_bc_2010  <- subset(test, indicator=="WorldBank_gdp_con_bc_2010"  & year>=1950 & !is.na(og))
#WorldBank_gdp_con_bc_2010  <- subset(test, indicator=="WorldBank_gdp_con_bc_2010" & year>=1950)
global_WorldBank_gdp_con_bc_2010_mean <- xtabs(mean ~ year, data=WorldBank_gdp_con_bc_2010)
global_WorldBank_gdp_con_bc_2010_og <- xtabs(og ~ year, data=WorldBank_gdp_con_bc_2010)
barplot(rbind(global_WorldBank_gdp_con_bc_2010_og, global_WorldBank_gdp_con_bc_2010_mean), beside=T)


WorldBank_gdp_ppp_bc_2017 <- subset(test, indicator=="WorldBank_gdp_ppp_bc_2017" & year>=1990& !is.na(og))
global_WorldBank_gdp_ppp_bc_2017_mean <- xtabs(mean ~ year, data=WorldBank_gdp_ppp_bc_2017)
global_WorldBank_gdp_ppp_bc_2017_og <- xtabs(og ~ year, data=WorldBank_gdp_ppp_bc_2017)
barplot(rbind(global_WorldBank_gdp_ppp_bc_2017_og, global_WorldBank_gdp_ppp_bc_2017_mean), beside=T)




##########
PWT100_gdp_ppp_none_2017 <- subset(test, indicator=="PWT100_gdp_ppp_none_2017" & !is.na(og))
global_PWT100_gdp_ppp_none_2017_mean <- xtabs(mean ~ year, data=PWT100_gdp_ppp_none_2017)
global_PWT100_gdp_ppp_none_2017_og <- xtabs(og ~ year, data=PWT100_gdp_ppp_none_2017)
barplot(rbind(global_PWT100_gdp_ppp_none_2017_og, global_PWT100_gdp_ppp_none_2017_mean), beside=T)



PWT100_gdp_ppp_none_2017 <- subset(test, indicator=="PWT100_gdp_ppp_none_2017" & !is.na(og))
PWT100_gdp_ppp_none_2017 <- subset(test, indicator=="PWT100_gdp_ppp_none_2017" & year>=1950)
global_PWT100_gdp_ppp_none_2017_mean <- xtabs(mean ~ year, data=PWT100_gdp_ppp_none_2017)
global_PWT100_gdp_ppp_none_2017_og <- xtabs(og ~ year, data=PWT100_gdp_ppp_none_2017)
barplot(rbind(global_PWT100_gdp_ppp_none_2017_og, global_PWT100_gdp_ppp_none_2017_mean), beside=T)

PWT100_gdp_ppp_none_2017 <- subset(test, indicator=="PWT100_gdp_ppp_none_2017")
global_PWT100_gdp_ppp_none_2017_mean <- xtabs(mean ~ year, data=PWT100_gdp_ppp_none_2017)
barplot(global_PWT100_gdp_ppp_none_2017_mean, beside=T)



PWT100_gdp_ppp_bc_2017 <- subset(test, indicator=="PWT100_gdp_ppp_bt_2017" & !is.na(og))
PWT100_gdp_ppp_bc_2017 <- subset(test, indicator=="PWT100_gdp_ppp_bt_2017" & year>=1950)
global_PWT100_gdp_ppp_bc_2017_mean <- xtabs(mean ~ year, data=PWT100_gdp_ppp_bc_2017)
global_PWT100_gdp_ppp_bc_2017_og <- xtabs(og ~ year, data=PWT100_gdp_ppp_bc_2017)
barplot(rbind(global_PWT100_gdp_ppp_bc_2017_og, global_PWT100_gdp_ppp_bc_2017_mean), beside=T)
