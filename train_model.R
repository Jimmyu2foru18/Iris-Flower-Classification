library(caret)
library(dplyr)

# Load and prepare data
source("iris_data.R")

model <- train(
  Species ~ .,
  data = train_data,
  method = "rpart",
  trControl = trainControl(method = "cv", number = 5)
)

predictions <- predict(model, test_data)

confusion_matrix <- confusionMatrix(predictions, test_data$Species)

print("Model Performance Metrics:")
print(confusion_matrix)

if (!dir.exists("output")) {
  dir.create("output")
}

saveRDS(model, "output/iris_model.rds")
write.csv(as.data.frame(confusion_matrix$table), "output/confusion_matrix.csv")

cat("\nOverall Accuracy:", round(confusion_matrix$overall["Accuracy"] * 100, 2), "%\n")