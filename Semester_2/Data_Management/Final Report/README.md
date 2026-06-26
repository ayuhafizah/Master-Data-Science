# 📊 Final Report: Malaysia Real GDP & GNI Analysis using Apache Hive and Python

## 📖 Overview

This project demonstrates the implementation of a big data analytics workflow using **Apache Hive**, **Hadoop Distributed File System (HDFS)**, and **Python** to analyse Malaysia's **Annual Real Gross Domestic Product (GDP)** and **Gross National Income (GNI)** from **1970 to 2025**.

The project was developed using **Apache Hive** for data storage and querying, while **Google Colab** was used for data preprocessing, feature engineering, exploratory data analysis (EDA), and visualisation.

The workflow includes downloading the dataset from OpenDOSM, uploading it into HDFS, managing the data using Apache Hive, and performing exploratory analysis using Python.

---

# 🖥️ Software Environment

| Component             | Environment  |
| --------------------- | ------------ |
| Programming Language  | Python 3     |
| Big Data Framework    | Hadoop HDFS  |
| Data Warehouse        | Apache Hive  |
| Notebook Platform     | Google Colab |
| Operating Environment | HDP Sandbox  |

---

# 📚 Python Libraries Used

* pandas
* numpy
* matplotlib
* seaborn

---

# 📂 Dataset

## Annual Real GDP & GNI (1970–2025)

**Source:** OpenDOSM (Department of Statistics Malaysia)

The dataset contains annual observations of Malaysia's economic performance measured using Real GDP and Real GNI at constant prices.

---

# 📊 Dataset Overview

The dataset consists of two series:

| Series     | Description                              |
| ---------- | ---------------------------------------- |
| abs        | Absolute values of Real GDP and Real GNI |
| growth_yoy | Annual percentage growth rates           |

### Variables

| Variable   | Description                               |
| ---------- | ----------------------------------------- |
| series     | Dataset category (Absolute / Growth Rate) |
| date       | Observation year                          |
| gdp        | Real Gross Domestic Product               |
| gni        | Real Gross National Income                |
| gdp_capita | Real GDP per Capita                       |
| gni_capita | Real GNI per Capita                       |

---

# 🔄 Project Workflow

* 📥 Download dataset from OpenDOSM
* 📂 Upload dataset into HDFS
* 🗄️ Create Apache Hive database
* 📋 Create Hive external table
* 🔍 Execute Hive SQL queries
* 🧹 Perform data cleaning
* ⚙️ Perform feature engineering
* 📊 Conduct exploratory data analysis (EDA)
* 📈 Generate insights, recommendations and conclusion

---

# 📊 Exploratory Data Analysis

The following analyses were performed:

### 📈 Trend Analysis

* Real GDP and Real GNI
* Real GDP per Capita and Real GNI per Capita

### 📉 Growth Analysis

* Annual GDP and GNI Growth Rate
* Economic Period Comparison

### 📊 Relationship Analysis

* GDP–GNI Gap
* GDP–GNI Gap as Percentage of GDP
* Correlation Heatmap
* Scatter Plot (GDP vs GNI)

---

# 🗄️ Apache Hive Tasks

The following Hive operations were completed:

* Create Hive database
* Create external Hive table
* Load dataset from HDFS
* Query dataset using Hive SQL
* Verify successful data loading and querying

---

# 📁 Repository Structure
```text
Final_Report/
│
├── README.md
├── Final_Report_P162895.ipynb
├── requirements.txt
│
├── data/
│   └── gdp_gni_annual_real.csv
│
├── hive/
│   └── hive_queries.sql
│
└── screenshots/ 
```

---

# 📸 Screenshots
The `screenshots` folder contains images documenting the Apache Hive workflow, including:

- 📥 Downloading the dataset from OpenDOSM using `wget`
- 📂 Uploading the dataset into HDFS
- 🗄️ Creating the Apache Hive database
- 📋 Creating the Hive external table
- ✅ Executing Hive SQL queries and verifying successful data loading

---

# 🚀 Reproducibility Instructions

### Step 1

Download the **Annual Real GDP & GNI (1970–2025)** dataset from OpenDOSM or use the dataset provided in the `data` folder.

### Step 2

Upload the dataset into the **Hadoop Distributed File System (HDFS)**.

### Step 3

Create the Apache Hive database and external table using the SQL commands provided in **`hive_queries.sql`**.

### Step 4

Clone or download this repository and open **`Final_Report_P162895.ipynb`** using **Google Colab**, **Jupyter Notebook**, or another compatible Python environment.

### Step 5

Install the required Python libraries listed in **`requirements.txt`** (only if they are not already installed).

```bash
pip install -r requirements.txt
```

### Step 6

Run all notebook cells sequentially from top to bottom to reproduce the analysis and visualisations.


---

# ✅ Validation

The dataset was successfully uploaded into HDFS and queried using Apache Hive. The queried data was then analysed using Python to perform feature engineering, exploratory data analysis (EDA), and data visualisation.

The successful execution of both Apache Hive and Python components demonstrates an effective big data analytics workflow for managing, analysing, and interpreting structured economic data.

---

# 📝 Notes

- This project focuses on exploratory data analysis (EDA) rather than predictive modelling.

- Apache Hive was used for data management, while Python was used for preprocessing, feature engineering, exploratory data analysis, and visualisation.

- Running the Apache Hive component of this project requires access to a Hadoop environment with Apache Hive (e.g., HDP Sandbox or an equivalent Hadoop cluster). The Python notebook can be executed independently after the dataset has been exported from Hive.

