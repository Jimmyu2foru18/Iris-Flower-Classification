#!/usr/bin/env Rscript

# Source the iris data preparation script
tryCatch({
  source("iris_data.R")
  cat("Data preparation completed successfully.\n")
}, error = function(e) {
  cat("Error in data preparation:", conditionMessage(e), "\n")
  quit(status = 1)
})