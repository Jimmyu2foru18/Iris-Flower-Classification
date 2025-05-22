# Iris Flower Classification

## Overview
This project is for practive of machine learning to classify iris flowers into three species based on their sepal and petal measurements.

## Project Structure
```
.
├── data/
├── iris_data.csv
├── data_prep.R
├── visualize.R
├── train_model.R
├── utils.R
├── output/
├── README.md
└── project_proposal.md
```

## Prerequisites
- R 
- RStudio 
- https://www.kaggle.com/datasets/webirlab/iris-data

## Required R Packages and Dependencies

### Verifying Package Installation
Run these commands to verify successful installation:
```R
library(future)
library(recipes)
library(caret)
library(ggplot2)
library(dplyr)
library(tidyr)
```

## Setup Instructions
1. Clone this repository
2. Open RStudio and set the project directory as your working directory
3. Install required packages 
4. Run the scripts in the following order:
   - `data_prep.R`
   - `visualize.R`
   - `train_model.R`

## Usage
1. Data Preparation:
   ```R
   source("data_prep.R")
   ```
2. Data Visualization:
   ```R
   source("visualize.R")
   ```
3. Model Training and Evaluation:
   ```R
   source("train_model.R")
   ```
## Output
The project will generate various visualizations and metrics to assess the model's performance.
   ```R
   source("data_prep.R")
   ```
## Features
- Data preprocessing and analysis
- Comprehensive data visualization
- Model training using Decision Tree Classifier
- Model evaluation and performance metrics

## Results
The model's performance metrics and visualizations will be saved in the `output/` directory.