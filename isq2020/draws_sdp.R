#####################################################
#
# Anders, Fariss, Markowitz (2020):
# Bread before guns or butter: 
# Introducing Surplus Domestic Product (SDP)
#
# Creating SDP estimates
# (incorporating uncertainty from measurement model)
#
#####################################################

library(tidyverse)

raw <- readr::read_csv("./isq2020/raw/gdp_pop_estimates.csv")

# Creating 1000 draws
seed <- 79998
reps <- 1000

func_draw <- function(mean, sd, reps, seed) {
  stopifnot(length(mean) == length(sd))
  
  purrr::map(1:length(mean),
             function(i) {
               withr::with_seed(seed,
                                rnorm(reps, mean[i], sd[i]))
             })
  
}


# Creating gdp draws, exponentiation
gdp <- func_draw(raw[['WorldBank_gdp_2011_ppp_estimate']],
                 raw[['WorldBank_gdp_2011_ppp_estimate_sd']],
                 reps, seed) %>%
  purrr::map(., ~ exp(.x))

# Creating population draws, exponentiation
pop <- func_draw(raw[['WorldBank_pop_estimate']],
                 raw[['WorldBank_pop_estimate_sd']],
                 reps, seed) %>%
  purrr::map(., ~ exp(.x)) 

# Creating threshold value
v1095 <- pop %>%
  purrr::map(., ~ .x * (3 * 365)) 

# Computing SDP, logging, taking mean and sd
sdp1095 <- purrr::map2(gdp, v1095, ~ ifelse(.x > .y, .x - .y, 0)) %>%
  purrr::map(., ~ log(.x)) %>%
  purrr::map_df(.,
                ~ tibble(sdp = mean(.x),
                         sdp_sd = sd(.x)))

# Storing everything
df <- bind_cols(raw, sdp1095)

readr::write_csv(df, "./isq2020/gdp_pop_sdp_estimates.csv")
