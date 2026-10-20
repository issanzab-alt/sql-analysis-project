 ## sql-analysis-project

 ## Project Overview

This project explores water services data using MySQL. It focuses on examining water access, water sources, visits, water quality, and pollution records, as well as correcting data inconsistencies.

The project was completed as part of the DAE Integrated Project Part 1 assignment.

## Tools Used

- MySQL
- MySQL Workbench
- SQL

## Project Objectives

- Explore database tables and understand their structure.
- Examine different water sources.
- Investigate visits with long queues and visits with no waiting time.
- Filter water-quality records based on specified conditions.
- Identify incorrect pollution descriptions and contamination records.
- Create a backup table and apply data-cleaning updates.
- Verify the corrected records.

## Project Sections

### 1. Exploration
Explored the `global_water_access` table to inspect water-access data.

### 2. Water Sources
Queried the `water_source` table to examine water-source records.

### 3. Visits
Filtered visit records to identify queues longer than 500 and visits with a queue time of zero.

### 4. Water Quality
Explored the `water_quality` table and filtered records using subjective quality scores and visit counts.

### 5. Pollution
Examined the `well_pollution` table, investigated contamination values, and searched for inconsistent pollution descriptions.

### 6. Data Cleaning
Created a copy of the pollution table and wrote update statements to correct pollution descriptions and results.

## SQL Skills Demonstrated

- Retrieving data with `SELECT`
- Filtering records with `WHERE`
- Applying multiple conditions with `AND`
- Searching for multiple values with `IN`
- Creating a table using `CREATE TABLE AS SELECT`
- Updating records with `UPDATE` and `SET`
- Investigating data inconsistencies

## Project Files

- `water_services_analysis.sql` — SQL queries used for the analysis and data-cleaning tasks.
- `SQL Analysis documentation.pdf` — screenshots documenting the original queries and their results.

## Author

Benny Issanza

Aspiring Data Analyst
