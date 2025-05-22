check_missing_values <- function(data) {
  missing_count <- colSums(is.na(data))
  if (sum(missing_count) > 0) {
    print("Missing values found:")
    print(missing_count[missing_count > 0])
  } else {
    print("No missing values found in the dataset.")
  }
}

check_outliers <- function(data, columns) {
  outliers <- list()
  for (col in columns) {
    Q1 <- quantile(data[[col]], 0.25)
    Q3 <- quantile(data[[col]], 0.75)
    IQR <- Q3 - Q1
    lower_bound <- Q1 - 1.5 * IQR
    upper_bound <- Q3 + 1.5 * IQR
    
    outliers[[col]] <- data[[col]][data[[col]] < lower_bound | data[[col]] > upper_bound]
  }
  return(outliers)
}

normalize_features <- function(data, columns) {
  for (col in columns) {
    data[[col]] <- scale(data[[col]])
  }
  return(data)
}

create_output_dir <- function() {
  if (!dir.exists("output")) {
    dir.create("output")
    print("Created output directory.")
  }
}