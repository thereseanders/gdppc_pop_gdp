test <- readRDS("gdppc_pop_gdp_estimates/estimates_gdp_model_combined_normal_noslope_gamma_lambda_additive_test_20250513.rds")

unique(test$indicator)
#[1] "Bairoch_gdp_ppp_bc_1960"         "BroadberryKlein_gdp_ppp_bc_1990" "MW_gdp_con_bc_2010"             
#[4] "PWT1001_gdp_ppp_bc_2017"         "PWT1001_gdp_ppp_bt_2017"         "PWT1001_gdp_ppp_none_2017"      
#[7] "UScensus_gdp_con_none_1958"      "WorldBank_gdp_con_bc_2015"       "WorldBank_gdp_ppp_bc_2021"      
#[10] "cepii_gdp_con_bc_2017"           "latent_gdp"     

##########
Bairoch_gdp_ppp_bc_1960 <- subset(test, indicator=="Bairoch_gdp_ppp_bc_1960" & !is.na(og))
plot(Bairoch_gdp_ppp_bc_1960$og_log10, Bairoch_gdp_ppp_bc_1960$mean_log10)
abline(a=0,b=1,col=2)

BroadberryKlein_gdp_ppp_bc_1990 <- subset(test, indicator=="BroadberryKlein_gdp_ppp_bc_1990" & !is.na(og))
plot(BroadberryKlein_gdp_ppp_bc_1990$og_log10, BroadberryKlein_gdp_ppp_bc_1990$mean_log10)
abline(a=0,b=1,col=2)

MW_gdp_con_bc_2010 <- subset(test, indicator=="MW_gdp_con_bc_2010" & !is.na(og))
plot(MW_gdp_con_bc_2010$og_log10, MW_gdp_con_bc_2010$mean_log10)
abline(a=0,b=1,col=2)

PWT1001_gdp_ppp_bc_2017 <- subset(test, indicator=="PWT1001_gdp_ppp_bc_2017" & !is.na(og))
plot(PWT1001_gdp_ppp_bc_2017$og_log10, PWT1001_gdp_ppp_bc_2017$mean_log10)
abline(a=0,b=1,col=2)

PWT1001_gdp_ppp_bt_2017 <- subset(test, indicator=="PWT1001_gdp_ppp_bt_2017" & !is.na(og))
plot(PWT1001_gdp_ppp_bt_2017$og_log10, PWT1001_gdp_ppp_bt_2017$mean_log10)
abline(a=0,b=1,col=2)

PWT1001_gdp_ppp_none_2017 <- subset(test, indicator=="PWT1001_gdp_ppp_none_2017" & !is.na(og))
plot(PWT1001_gdp_ppp_none_2017$og_log10, PWT1001_gdp_ppp_none_2017$mean_log10)
abline(a=0,b=1,col=2)

UScensus_gdp_con_none_1958 <- subset(test, indicator=="UScensus_gdp_con_none_1958" & !is.na(og))
plot(UScensus_gdp_con_none_1958$og_log10, UScensus_gdp_con_none_1958$mean_log10)
abline(a=0,b=1,col=2)

WorldBank_gdp_con_bc_2015 <- subset(test, indicator=="WorldBank_gdp_con_bc_2015" & !is.na(og))
plot(WorldBank_gdp_con_bc_2015$og_log10, WorldBank_gdp_con_bc_2015$mean_log10)
abline(a=0,b=1,col=2)

WorldBank_gdp_ppp_bc_2021 <- subset(test, indicator=="WorldBank_gdp_ppp_bc_2021" & !is.na(og))
plot(WorldBank_gdp_ppp_bc_2021$og_log10, WorldBank_gdp_ppp_bc_2021$mean_log10)
abline(a=0,b=1,col=2)

cepii_gdp_con_bc_2017 <- subset(test, indicator=="cepii_gdp_con_bc_2017" & !is.na(og))
plot(cepii_gdp_con_bc_2017$og_log10, cepii_gdp_con_bc_2017$mean_log10)
abline(a=0,b=1,col=2)
