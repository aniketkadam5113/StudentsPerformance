# Student Performance Analytics

Data Analytics portfolio project using Python, Pandas, NumPy, Matplotlib, Seaborn, MySQL, and Power BI.

## Objective
Analyze the Kaggle Students Performance in Exams dataset to compare subject scores, inspect distributions, and explore observed patterns across test-preparation status and student groups.

## Repository structure
- `data/StudentsPerformance.csv` — source dataset (check Kaggle license before redistribution)
- `notebooks/student_performance_analysis.ipynb` — guided exploratory analysis and visualizations
- `sql/01_create_table.sql` — MySQL table definition
- `sql/02_analysis_queries.sql` — analytical SQL practice
- `powerbi/README.md` — dashboard design and setup
- `docs/data_dictionary.md` — field definitions

## Python setup
From the repository root:
```powershell
py -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
jupyter notebook
```
Open `notebooks/student_performance_analysis.ipynb` and run cells from top to bottom.

## MySQL
1. Open MySQL Workbench and connect to your server.
2. Run `sql/01_create_table.sql`.
3. Right-click the `student_performance` table and choose **Table Data Import Wizard**.
4. Select the CSV and map the eight source columns. Leave `student_id` unmapped because MySQL generates it.
5. Run `sql/02_analysis_queries.sql`.
6. Confirm the row count and compare SQL averages with Python.

Review the `DROP TABLE` statement in the schema before running it if you already have a table with that name.

## Power BI
Follow `powerbi/README.md` to connect to MySQL and create the dashboard. Add the completed `.pbix` and screenshots after verifying them locally.

## Dashboard plan
**Page 1 — Overview:** student count, average scores, subject comparison, preparation-status comparison, slicers.
**Page 2 — Group comparisons:** parental education, race/ethnicity group, math-vs-reading scatter plot, matrix of averages.

## Initial data notes
The provided CSV has 1,000 rows and eight source columns. Initial profiling found no missing cells or exact duplicate rows. Average scores: mathematics 66.09, reading 69.17, writing 68.05. These are descriptive findings, not causal conclusions.

## Dataset attribution
Source: Kaggle, *Students Performance in Exams*. Check the dataset's current license and attribution requirements before publishing the CSV. If redistribution is not permitted, remove the file from the repository and link to the Kaggle dataset instead.
