# Power BI Dashboard Guide

## Connect to MySQL
1. Power BI Desktop → Get data → MySQL database.
2. Server: `localhost` (or your configured server); database: `student_performance`.
3. Select `student_performance` and load it. Install the supported MySQL connector if Power BI requests it.

## Page 1 — Performance Overview
- KPI cards: student count, average math, average reading, average writing
- Clustered bar/column chart: subject average comparison
- Clustered bar chart: average scores by test preparation status
- Slicers: gender, lunch, test preparation

## Page 2 — Group Comparisons
- Average scores by parental education
- Average scores by race/ethnicity group
- Scatter plot: math score vs reading score
- Matrix: group, student count, and subject averages

