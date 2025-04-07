# Time Series Dual Shrinkage Test Solutions

This repository contains my solutions to the contributor tests (Easy, Medium, and Hard) for the Time Series Dual Shrinkage Simulation Study project inspired by Gallagher et al. (2024, 2025).

## 📁 Contents

### ✅ Easy Level
Comparison of base R `acf()` and `pacf()` with `taperedacf()` from the `forecast` package across various AR and MA processes.

- Code: `easy/easy_test.R`
- Output plots: `easy/plots/`

### 🟡 Medium Level
`simulate_ar1_range()` — a function to generate simulated AR(1) processes with specified correlation ranges.

- Function: `medium/simulate_ar1_range.R`
- Usage Example: `medium/simulation_example.Rmd`

### 🔴 Hard Level
A full R package named `ar1simR` implementing the above function, complete with:

- `DESCRIPTION`, `NAMESPACE`
- Proper documentation
- Unit tests using `testthat`
- Passes `R CMD check --as-cran`

📦 Folder: `hard/ar1simR/`

## 🔧 Setup Instructions

Install dependencies in R:

```r
install.packages(c("forecast", "ggplot2", "testthat", "rmarkdown"))
```

To test the R package:

```r
library(devtools)
devtools::load_all("hard/ar1simR")
devtools::check("hard/ar1simR", args = "--as-cran")
```

## 👤 Author

**Soham Chowdhury**  
GitHub: [@your-github-username](https://github.com/your-github-username)

---