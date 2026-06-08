# Assignment 02: Apache Spark & Cassandra Data Pipeline

## Overview

This assignment develops a **Python-based data pipeline** using **Apache Spark** and **Apache Cassandra** on the **MovieLens 100K dataset**. The project demonstrates core data management concepts including data processing, storage, and querying in a distributed environment.

---

## Project Objectives

- Build an end-to-end data pipeline using Apache Spark
- Implement a NoSQL data warehouse using Apache Cassandra
- Perform ETL (Extract, Transform, Load) operations on the MovieLens dataset
- Execute analytical queries on distributed data
- Demonstrate reproducibility and best practices in data management

---

## Dataset

**MovieLens 100K Dataset**
- **Size**: 100,000 movie ratings
- **Source**: GroupLens Research
- **Contents**: User ratings, movie metadata, and user demographics
- **Format**: Structured tabular data suitable for relational and NoSQL storage

---

## Technologies & Requirements

### Core Technologies
- **Python 3.7+**
- **Apache Spark 2.4+** (PySpark)
- **Apache Cassandra 3.11+**
- **Jupyter Notebook** (for interactive development)

### Python Dependencies
```
pyspark>=2.4.0
cassandra-driver>=3.25.0
pandas>=1.0.0
numpy>=1.18.0
matplotlib>=3.0.0
seaborn>=0.10.0
```

---

## Setup & Installation

### 1. Prerequisites
Ensure you have the following installed:
- Java Development Kit (JDK) 8 or later
- Python 3.7+
- pip or conda package manager

### 2. Install Dependencies

Using pip:
```bash
pip install -r requirements.txt
```

Or manually:
```bash
pip install pyspark cassandra-driver pandas numpy matplotlib seaborn
```

### 3. Start Apache Cassandra

**Option A: Local Installation**
```bash
# On macOS (via Homebrew)
brew services start cassandra

# On Linux/Windows, follow official Cassandra documentation
cassandra -f  # Run in foreground for testing
```

**Option B: Docker (Recommended)**
```bash
docker run -d --name cassandra -p 9042:9042 cassandra:latest
```

### 4. Configure Spark
```bash
# Set SPARK_HOME environment variable
export SPARK_HOME=/path/to/spark
export PATH=$SPARK_HOME/bin:$PATH
```

---

## Project Structure

```
Assignment_02/
├── README.md                          # This file
├── Assignment02_P162895.json         # Main notebook/assignment file
├── Assignment_02.pdf                 # Assignment specifications
└── requirements.txt                  # Python dependencies (optional)
```

---

## Reproducibility Instructions

### Step 1: Prepare the Environment
```bash
# Clone or download the assignment files
cd Semester_2/Data_Management/Assignment_02/

# Create a virtual environment (optional but recommended)
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```

### Step 2: Set Up Cassandra

Ensure Cassandra is running on `localhost:9042` (default port).

```bash
# Verify Cassandra connection
python -c "from cassandra.cluster import Cluster; \
cluster = Cluster(['127.0.0.1']); \
session = cluster.connect(); \
print('Connected to Cassandra'); \
session.shutdown()"
```

### Step 3: Initialize the Database

The notebook will automatically:
1. Create necessary Cassandra keyspaces and tables
2. Load the MovieLens dataset
3. Process data using Spark

### Step 4: Run the Notebook

```bash
jupyter notebook Assignment02_P162895.ipynb
```

Or if using the JSON format:
- Import the notebook file into your Jupyter environment
- Execute cells sequentially from top to bottom
- Monitor console output for warnings/errors

### Step 5: Validate Results

Check that:
- ✅ Data successfully loaded into Cassandra tables
- ✅ Spark transformations completed without errors
- ✅ Query results match expected outputs
- ✅ Visualizations are generated

---

## Key Analysis & Expected Outputs

### Data Pipeline Stages

1. **Extract**: Load MovieLens dataset from source files
2. **Transform**: Clean, validate, and enrich data using Spark
3. **Load**: Persist processed data to Cassandra

### Analytical Queries

Examples of queries performed:
- User rating statistics (mean, distribution)
- Most-rated movies
- Genre preferences by demographic
- Rating trends over time
- User similarity metrics

### Visualizations

The notebook generates:
- **Distribution plots** of ratings
- **Heatmaps** of genre preferences
- **Bar charts** of top-rated movies
- **Time series** of rating trends
- **Demographic analysis** charts

---

## Expected Outputs

After successful execution, you should see:

1. **Console Output**
   - Confirmation of Cassandra connection
   - Spark job progress messages
   - Row counts from loaded data

2. **Generated Files** (if applicable)
   - CSV exports of analysis results
   - PNG/PDF visualizations

3. **Cassandra Tables** with data:
   - `movies` - Movie metadata
   - `ratings` - User ratings
   - `users` - User demographics
   - *Additional tables per assignment requirements*

---

## Troubleshooting

### Issue: Cannot connect to Cassandra
```
Error: cassandra.cluster.NoHostAvailable
```
**Solution**: 
- Verify Cassandra is running: `ps aux | grep cassandra`
- Check port 9042 is accessible: `telnet localhost 9042`
- Restart Cassandra service

### Issue: Out of Memory
```
Error: java.lang.OutOfMemoryError
```
**Solution**:
- Increase Spark executor memory:
  ```bash
  spark-submit --driver-memory 4g --executor-memory 4g
  ```

### Issue: Notebook kernel dies
**Solution**:
- Restart Jupyter kernel
- Clear all outputs: Kernel → Restart & Clear Output
- Reinstall dependencies

### Issue: Python/Java version incompatibility
**Solution**:
- Verify Java version: `java -version`
- Use Java 8+: `export JAVA_HOME=/path/to/jdk8+`

---

## How to Reproduce

To fully reproduce this analysis:

1. **Follow the setup steps** above in order
2. **Execute the notebook cells** sequentially
3. **Monitor outputs** at each stage
4. **Compare results** with provided assignment specifications
5. **Validate data integrity** in Cassandra tables

For non-deterministic operations (e.g., sampling), note the random seed used in the notebook to ensure reproducibility.

---

## Code Quality & Best Practices

This assignment demonstrates:
- ✅ Modular, well-commented code
- ✅ Proper error handling
- ✅ Data validation at each pipeline stage
- ✅ Efficient Spark transformations
- ✅ Reproducible random seeds (where applicable)
- ✅ Documentation of assumptions and limitations

---

## References

- [MovieLens Dataset Documentation](https://grouplens.org/datasets/movielens/)
- [Apache Spark Documentation](https://spark.apache.org/docs/latest/)
- [Apache Cassandra Documentation](https://cassandra.apache.org/doc/latest/)
- [PySpark API Reference](https://spark.apache.org/docs/latest/api/python/)

---

## Author

**Student ID**: P162895  
**Course**: Semester 2 - Data Management  
**Date**: 2026

---

## Notes

- This assignment runs on a single machine; for production scaling, increase Cassandra cluster nodes
- Dataset should be downloaded separately if not included in the repository
- All code is tested with the specified versions; compatibility with newer versions not guaranteed
- Contact the course instructor for assignment-specific clarifications

---

**Last Updated**: June 2026
