# Function to extract and combine draws

# The function below assumes that the input 'x' is on the log scale
func_mean_sd <- function(x, trans = c("log", "og", "log10")) {
  out_ls <- list()
  if ("log" %in% trans) {
    out_ls <- append(out_ls, list(
      "mean_log" = apply(x, 2, mean),
      "sd_log" = apply(x, 2, sd)
    ))
  }
  if ("og" %in% trans) {
    out_ls <- append(out_ls, list(
      "mean" = apply(exp(x), 2, mean),
      "sd" = apply(exp(x), 2, sd)
    ))
  }
  if ("log10" %in% trans) {
    out_ls <-
      append(out_ls, list(
        "mean_log10" = apply(log10(exp(x)), 2, mean),
        "sd_log10" = apply(log10(exp(x)), 2, sd)
      ))
  }
  return(out_ls)
}

func_draws <- function(isam, N, mean_mat, sd_mat) {
  list <- lapply(1:isam,
                 function(i) {
                   rnorm(1:N,
                         mean = mean_mat[i,],
                         sd = sd_mat[i])
                 })
  do.call(rbind, list)
}
