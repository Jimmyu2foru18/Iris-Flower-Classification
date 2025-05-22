# Load required libraries
library(caret)
library(dplyr)
library(tidyr)

# Load iris dataset
data(iris)
iris_data <- iris

# Create data directory if it doesn't exist
if (!dir.exists("data")) {
  dir.create("data")
}

# Save raw data
write.csv(iris_data, "data/iris_data.csv", row.names = FALSE)

# Create train/test split
set.seed(123)
train_index <- createDataPartition(iris_data$Species, p = 0.7, list = FALSE)
train_data <- iris_data[train_index, ]
test_data <- iris_data[-train_index, ]

# Save processed data
save(iris_data, train_data, test_data, file = "data/processed_data.RData")

# Print data summaries
cat("\nData Summary:\n")
print(summary(iris_data))

cat("\nTraining Data Summary:\n")
print(summary(train_data))

cat("\nTesting Data Summary:\n")
print(summary(test_data))