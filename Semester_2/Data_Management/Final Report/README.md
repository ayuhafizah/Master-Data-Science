# 📊 Final Report: Malaysia Real GDP & GNI Analysis Using Apache Hive and Python
# 📖 Project Overview

This project analyses **Malaysia's Annual Real Gross Domestic Product (GDP)** and **Gross National Income (GNI)** from **1970 to 2025** using **Apache Hive** and **Python**.

The project demonstrates an end-to-end big data analytics workflow, beginning with data storage and management in **Hadoop Distributed File System (HDFS)** using **Apache Hive**, followed by data preprocessing, feature engineering, exploratory data analysis (EDA), and interpretation using Python.

---

# 🎯 Project Objectives

* Analyse the long-term trends of Malaysia's Real GDP and Real GNI.
* Compare GDP and GNI growth across different economic periods.
* Examine the relationship between GDP and GNI through statistical analysis and data visualisation.
* Demonstrate the integration of Apache Hive and Python in a big data analytics workflow.

---

# 📂 Dataset

**Dataset:** Annual Real GDP & GNI (1970–2025)

**Source:** OpenDOSM – Department of Statistics Malaysia

### Variables

* Series
* Year
* Real GDP
* Real GNI
* Real GDP per Capita
* Real GNI per Capita

---

# 🛠 Technologies Used

* Apache Hive
* Hadoop Distributed File System (HDFS)
* Python
* Google Colab
* Pandas
* NumPy
* Matplotlib
* Seaborn

---

# ✨ Project Features

* Data management using Apache Hive
* Dataset storage in Hadoop HDFS
* Data cleaning and preprocessing
* Feature engineering
* Descriptive statistics
* Exploratory Data Analysis (EDA)
* Correlation analysis
* Economic trend visualisation
* Insight generation and recommendations

---

# 🔄 Project Workflow

```text
OpenDOSM Dataset
        │
        ▼
Download Dataset
        │
        ▼
Upload Dataset to HDFS
        │
        ▼
Create Hive Database
        │
        ▼
Create External Hive Table
        │
        ▼
Execute Hive SQL Queries
        │
        ▼
Load Dataset into Python
        │
        ▼
Data Cleaning & Feature Engineering
        │
        ▼
Exploratory Data Analysis (EDA)
        │
        ▼
Insights, Recommendations & Conclusion
```

---

# 📊 Analyses Performed

The notebook includes:

* Data loading and preprocessing
* Apache Hive data management
* Feature engineering
* Descriptive statistics
* Trend analysis of Real GDP and Real GNI
* GDP per Capita and GNI per Capita analysis
* Annual growth rate analysis
* Economic period comparison
* GDP–GNI gap analysis
* Correlation analysis
* Scatter plot analysis
* Key insights and recommendations

---

# 📈 Expected Output

The notebook generates:

* Trend visualisations of Malaysia's Real GDP and Real GNI
* GDP and GNI per capita analysis
* Annual economic growth analysis
* Economic period comparison
* GDP–GNI gap visualisations
* Correlation heatmap
* Scatter plot showing the relationship between GDP and GNI
* Key findings, recommendations, and conclusion

---

# 📁 Repository Structure

```text
Final Report
│
├── Final_Report_P162895.ipynb      # Main analysis notebook
├── README.md                       # Project documentation
├── requirements.txt                # Required Python libraries
├── gdp_gni_annual_real.csv         # Dataset
├── hive_queries.sql                # Apache Hive SQL queries
```

---

# ▶️ How to Run

1. Clone or download this repository.
2. Open **Final_Report_P162895.ipynb** using Google Colab or Jupyter Notebook.
3. Install the required Python libraries using:
 ```bash
pip install -r requirements.txt
```
4. Run the notebook sequentially from the first cell to the last.
5. Refer to `hive/hive_queries.sql` for the Apache Hive commands used in this project.

