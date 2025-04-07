
simulate_ar1_range <- function(M = 10, N = 100, corr_range = c(0.6, 0.8)) {
  if (length(corr_range) != 2 || corr_range[1] >= corr_range[2]) {
    stop("corr_range must be a vector of length 2 with increasing values.")
  }

  phi_vals <- runif(M, min = corr_range[1], max = corr_range[2])
  sims <- lapply(phi_vals, function(phi) {
    arima.sim(model = list(ar = phi), n = N)
  })

  return(list(series = sims, phi_vals = phi_vals))
}
