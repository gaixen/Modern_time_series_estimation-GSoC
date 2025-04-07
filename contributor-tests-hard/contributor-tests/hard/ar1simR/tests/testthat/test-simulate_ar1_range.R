test_that("simulate_ar1_range works correctly", {
  result <- simulate_ar1_range(M = 5, N = 50, corr_range = c(0.4, 0.6))
  expect_equal(length(result$series), 5)
  expect_true(all(result$phi_vals >= 0.4 & result$phi_vals <= 0.6))
})