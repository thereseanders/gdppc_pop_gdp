test <- readRDS("gdppc_pop_gdp_estimates/estimates_pop_model_combined_normal_noslope_gamma_lambda_additive_test_20250513.rds")

unique(test$indicator)
#> unique(test$indicator)
#[1] "deng_pop"            "BroadberryKlein_pop" "MW_pop"              "Maddison2023_pop"    "PWT1001_pop"        
#[6] "UScensus_pop"        "WorldBank_pop"       "tr_pop"              "latent_pop"  

##########
deng_pop <- subset(test, indicator=="deng_pop" & !is.na(og))
plot(deng_pop$og_log10, deng_pop$mean_log10)
abline(a=0,b=1,col=2)

BroadberryKlein_pop <- subset(test, indicator=="BroadberryKlein_pop" & !is.na(og))
plot(BroadberryKlein_pop$og_log10, BroadberryKlein_pop$mean_log10)
abline(a=0,b=1,col=2)

MW_pop <- subset(test, indicator=="MW_pop" & !is.na(og))
plot(MW_pop$og_log10, MW_pop$mean_log10)
abline(a=0,b=1,col=2)

Maddison2023_pop <- subset(test, indicator=="Maddison2023_pop" & !is.na(og))
plot(Maddison2023_pop$og_log10, Maddison2023_pop$mean_log10)
abline(a=0,b=1,col=2)

PWT1001_pop <- subset(test, indicator=="PWT1001_pop" & !is.na(og))
plot(PWT1001_pop$og_log10, PWT1001_pop$mean_log10)
abline(a=0,b=1,col=2)

UScensus_pop <- subset(test, indicator=="UScensus_pop" & !is.na(og))
plot(UScensus_pop$og_log10, UScensus_pop$mean_log10)
abline(a=0,b=1,col=2)

WorldBank_pop <- subset(test, indicator=="WorldBank_pop" & !is.na(og))
plot(WorldBank_pop$og_log10, WorldBank_pop$mean_log10)
abline(a=0,b=1,col=2)

tr_pop <- subset(test, indicator=="tr_pop" & !is.na(og))
plot(tr_pop$og_log10, tr_pop$mean_log10)
abline(a=0,b=1,col=2)

