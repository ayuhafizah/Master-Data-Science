# 🎬 Assignment 02: MovieLens Data Analysis using Apache Spark and Cassandra

## 📖 Overview

This assignment demonstrates the implementation of a data processing and storage pipeline using Apache Spark and Apache Cassandra on the MovieLens 100K dataset. The project was developed using Apache Zeppelin in the HDP Sandbox environment and showcases distributed data processing, analytical querying, and NoSQL data storage.

The workflow includes loading data from HDFS, transforming data using Spark, performing analytical tasks using Spark SQL, storing results in Cassandra, and validating the stored results.

---

## 🖥️ Software Environment

| Component | Version |
|------------|------------|
| Python | 2.7.5 |
| Apache Spark | 2.3.0.2.6.5.0-292 |
| Apache Cassandra | 3.11.13 |
| CQLSH | 5.0.1 |
| Storage System | HDFS |
| Notebook Platform | Apache Zeppelin |

### 📚 Libraries Used

- pyspark
- pyspark.sql
- pyspark.sql.functions
- pyspark.sql.types
- pyspark.sql.window
- Cassandra Spark Connector

---

## 🎥 Dataset

### MovieLens 100K Dataset

The MovieLens 100K dataset contains movie ratings provided by users and includes movie metadata and user demographic information.

### 📂 Files Used

- u.data
- u.item
- u.user

### 📊 Dataset Summary

- 👥 943 users
- 🎬 1,682 movies
- ⭐ 100,000 ratings

---

## 🔄 Project Workflow

1. 📥 Load MovieLens data from HDFS.
2. 🧩 Create RDDs and parse raw records.
3. 🔄 Convert RDDs into Spark DataFrames.
4. 🧹 Perform data cleaning and preprocessing.
5. 🗂️ Register temporary Spark SQL views.
6. 📈 Execute analytical queries using Spark SQL.
7. 💾 Store analytical results in Cassandra tables.
8. ✅ Retrieve results from Cassandra for validation.

---

## 📊 Analytical Tasks

### 🎯 Task 1: Average Rating per Movie

Calculate the average rating and total number of ratings received by each movie.

### 🏆 Task 2: Top 10 Highest Rated Movies

Identify the top 10 highest-rated movies among movies with at least 50 ratings.

### 🎭 Task 3: Favourite Genre Analysis

Determine the favourite movie genre of active users who have rated at least 50 movies.

### 👶 Task 4: Users Under 20 Years Old

Identify users whose age is below 20 years old.

### 👨‍🔬 Task 5: Scientists Aged 30–40

Identify users whose occupation is scientist and whose age is between 30 and 40 years old.

---

## 🗄️ Cassandra Tables

The following tables were created and populated during the assignment:

- ratings
- movies
- average_ratings
- top10_movies
- favourite_genres
- users_under_20
- scientists_30_40

---

## 📁 Repository Structure

```text
Assignment_02/
│
├── README.md
├── Assignment02_P162895.json
├── Assignment_02.pdf
└── screenshots/
```

---

## 🚀 Reproducibility Instructions

### Step 1: Start Services

Start Hadoop, Spark, Cassandra, and Zeppelin services.

### Step 2: Upload Dataset

Upload the MovieLens dataset files into HDFS.

### Step 3: Import Notebook

Import `Assignment02_P162895.json` into Apache Zeppelin.

### Step 4: Execute Notebook

Run all notebook cells sequentially from top to bottom.

### Step 5: Validate Results

Verify that:

- ✅ Cassandra tables are successfully created.
- ✅ Data is written into Cassandra.
- ✅ Data can be read back from Cassandra.
- ✅ Analytical results match expected outputs.
- ✅ Visualisations are displayed correctly.

---

## ✅ Validation

The analytical results were written to Cassandra and subsequently loaded back into Spark DataFrames for validation. Record counts and sample outputs were checked to ensure successful data storage and retrieval.

This confirms the successful integration of Apache Spark and Apache Cassandra within a distributed data processing environment.

---

## 📸 Screenshots

The repository includes screenshots of:

- 🖥️ Environment setup
- 🏆 Top 10 highest-rated movies visualization
- 🎭 Favourite genre visualization
- 👶 Users under 20 analysis
- 👨‍🔬 Scientists aged 30–40 analysis
- ✅ Cassandra validation results

---

## 📝 Notes

This assignment was developed using Zeppelin. Therefore, the notebook is provided in Zeppelin JSON format rather than Jupyter Notebook (.ipynb) format.

All analytical tasks, visualisations, and Cassandra integration were successfully executed within the HDP Sandbox environment.
