# Data Dictionary

| Source column | Meaning | Type |
|---|---|---|
| `gender` | Gender category as supplied | Category |
| `race/ethnicity` | Race/ethnicity group category | Category |
| `parental level of education` | Parental education category | Category |
| `lunch` | Lunch category | Category |
| `test preparation course` | Test preparation status | Category |
| `math score` | Mathematics score (0–100) | Integer |
| `reading score` | Reading score (0–100) | Integer |
| `writing score` | Writing score (0–100) | Integer |

The notebook derives `total_score`, `average_score`, and analyst-defined `score_band`. The MySQL `student_id` is generated for table identification; it is not a real source identifier.
