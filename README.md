This repository contains estimates on gross domestic product (GDP) per capita, population, GDP, and surplus domestic product (SDP) from a Bayesian measurement model. These data are produced as part of a series of papers.

*Updated estimates will be made available upon publication of the data introduction article.*

# Content

The folder `isq2020` contains estimates of GDP, population, and SDP (1800-2015) used in the following article: 

| [Anders, Therese](https:://therese.rbind.io), [Christopher Fariss](http://cfariss.com), and [Jonathan Markowitz](https://johnzkan.wixsite.com/jonathanmarkowitz) (2020): [Bread before guns or butter: Introducing Surplus Domestic Product (SDP)](https://academic.oup.com/isq/article-abstract/64/2/392/5824855?redirectedFrom=fulltext). In *International Studies Quarterly 64*(2), pp. 392-405. |
| --- |

- [`gdp_pop_sdp_estimates.csv`](https://github.com/thereseanders/gdppc_pop_gdp/blob/master/isq2020/gdp_pop_sdp_estimates.csv) contains the GDP, population, and SDP estimates (based on $3 per day minimum subsistence threshold) and standard deviations. *All data are expressed as natural logs*. 
- [`draws_sdp.R`](https://github.com/thereseanders/gdppc_pop_gdp/blob/master/isq2020/draws_sdp.R) generates the SDP estimates (based on $3 per day minimum subsistence threshold), incorporating uncertainty from the estimation of GDP and population. 

| *Variable* | *Description* |
|-|-|
| `gwno` | Gleditsch-Ward country identifier |
| `year` | Year |
| `WorldBank_pop_estimate` | ln Population estimate (based on World Bank WDI 2016) |
| `WorldBank_pop_estimate_sd` | Standard deviation of ln population estimate |
| `WorldBank_gdp_2011_ppp_estimate` | ln GDP (PPP 2011) estimate (based on World Bank WDI 2016) |
| `WorldBank_gdp_2011_ppp_estimate_sd` | Standard deviation of ln GDP estimate |
| `sdp` | ln SDP estimate ($3 per day minimum subsistence threshold) |
| `sdp_sd` | Standard deviation of ln SDP estimate |


|:warning: | The full replication data for the article can be found [here](https://github.com/thereseanders/sdp). |
| --- | --- |
 









