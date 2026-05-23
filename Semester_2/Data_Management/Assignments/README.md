# 🌸 Assignment 1: Iris Classification using Spark MLlib

This project implements and compares three classification models using Spark MLlib on the Iris dataset:
- Logistic Regression
- Decision Tree
- Random Forest

## 📂 Files Included

- Iris_Classification_SparkMLlib.ipynb → Main assignment notebook
- iris.data → Dataset used for classification
- README.md → Project overview and instructions

## 📋 Overview

This assignment focuses on a **classification task** using the Iris dataset. The goal is to classify Iris flower species based on four numerical features using machine learning models implemented with **Apache Spark MLlib**.

## 🎯 Objective

Classify Iris flower species into three categories:
- **Iris-setosa**
- **Iris-versicolor**
- **Iris-virginica**

Based on four numerical features:
- Sepal length
- Sepal width
- Petal length
- Petal width

## 📊 Dataset

**Iris Dataset Attributes:**

| Attribute | Description | Type |
|---|---|---|
| sepal_length | Length of the sepal | Numerical |
| sepal_width | Width of the sepal | Numerical |
| petal_length | Length of the petal | Numerical |
| petal_width | Width of the petal | Numerical |
| species | Iris flower species | Categorical |

- **Total Records:** 150
- **Classes:** 3 (Balanced dataset - 50 records per species)
- **Missing Values:** None

## 🧠 Models Implemented

Three classification algorithms are implemented and compared:

### 1. **Logistic Regression**
- Simple linear classification model
- Efficient for binary/multiclass problems
- **Accuracy:** 92.5%

### 2. **Decision Tree**
- Tree-based classification model
- Easy to interpret decision rules
- Prone to overfitting on deep trees
- **Accuracy:** 92.5%

### 3. **Random Forest** ⭐ (Best Model)
- Ensemble method combining multiple decision trees
- Reduces overfitting compared to single trees
- **Accuracy:** 95.0%
- **Precision:** 95.0%
- **Recall:** 95.0%
- **F1-score:** 95.0%

## 📈 Results Summary

| Model | Accuracy | Precision | Recall | F1-score |
|---|---|---|---|---|
| Logistic Regression | 92.5% | 92.74% | 92.5% | 92.53% |
| Decision Tree | 92.5% | 94.11% | 92.5% | 92.53% |
| **Random Forest** | **95.0%** | **95.0%** | **95.0%** | **95.0%** |

## 🛠️ Methodology

### 1. **Data Loading & Understanding**
- Load the Iris dataset using Spark
- Perform exploratory data analysis (EDA)
- Check data types and missing values

### 2. **Exploratory Data Analysis**
- Bar chart: Distribution of species (balanced dataset)
- Box plot: Petal length by species
- Scatter plot: Petal length vs petal width by species

### 3. **Data Preprocessing**
- Convert categorical variable `species` to numerical using `StringIndexer`
- Combine numerical features using `VectorAssembler`
- Create feature vectors for model training

### 4. **Train-Test Split**
- Training set: 70% (110 samples)
- Testing set: 30% (40 samples)
- Random seed: 1 (for reproducibility)

### 5. **Model Development & Tuning**
- Hyperparameter tuning using **Grid Search** with **Cross-Validation** (2-fold)
- **Logistic Regression:** Tuned regParam and elasticNetParam
- **Decision Tree:** Tuned maxDepth
- **Random Forest:** Tuned numTrees and maxDepth

### 6. **Model Evaluation**
- Evaluated using: Accuracy, Precision, Recall, F1-score
- Best model: **Random Forest with 95% accuracy**

## 🔧 Technologies Used

- **PySpark** - Distributed computing framework
- **Spark MLlib** - Machine learning library
- **Pandas** - Data manipulation and visualization
- **Matplotlib** - Data visualization
- **Python 3** - Programming language
- **Jupyter Notebook** - Interactive development

## 📂 Project Structure

```
Assignment1_P162895.ipynb
├── 1.0 Load Libraries and Create Spark Session
├── 2.0 Load Dataset and Data Understanding
├── 3.0 Exploratory Data Analysis and Visualization
├── 4.0 Data Preprocessing for Spark MLlib
├── 5.0 Train-Test Split
├── 6.0 Model Development and Hyperparameter Tuning
│   ├── 6.1 Logistic Regression
│   ├── 6.2 Decision Tree
│   └── 6.3 Random Forest
├── 7.0 Model Evaluation
└── 8.0 Visualization of Model Performance
```

## 🚀 How to Run

### Prerequisites
```bash
pip install pyspark pandas matplotlib jupyter
```

### Steps
1. Open the Jupyter notebook: `Assignment1_P162895.ipynb`
2. Ensure `iris.data` is in the same directory
3. Run all cells sequentially
4. View results and visualizations

## 💡 Key Findings

✅ **Random Forest** achieved the best performance with **95% accuracy**

✅ **Dataset is balanced** - All three species have equal representation (50 samples each)

✅ **Feature importance** - Petal length and petal width are strong discriminators between species

✅ **Spark MLlib** successfully scaled the classification task using distributed computing

## 📌 Notes

- **Local execution:** `local[1]` is used for Windows stability
- **Cross-validation:** 2-fold CV to tune hyperparameters efficiently
- **Balanced dataset:** No class imbalance issues; accuracy is a reliable metric

## 👤 Author

**P162895** - Data Management Assignment

---

*Last Updated: 2026-05-23*
