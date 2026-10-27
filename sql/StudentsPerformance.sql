use student_performance;
SELECT * FROM student_performance.student_performance;

-- 1. Average score by subject
select 
	round(avg(math_score), 2) avg_math, 
    round(avg(reading_score),2) avg_reading,
    round(avg(writing_score),2) avg_writing 
from 
	student_performance;
    
-- 2. Average scores by test preparation status
select 
	test_preparation_course,
    count(*) as student_count,
	round(avg(math_score), 2) avg_math, 
    round(avg(reading_score),2) avg_reading,
    round(avg(writing_score),2) avg_writing 
from 
	student_performance
group by
	test_preparation_course;
    
-- 3. Average scores by parental education
select 
	parental_education,
    count(*) as studenta_count,
    round(avg(math_score), 2) avg_math,
    round(avg(reading_score), 2) avg_reading,
    round(avg(writing_score), 2) avg_writing
from
	student_performance
group by
	parental_education
order by avg_math;
    
-- 4. Rank parental education categories by average math score
with group_scores as (
	select 
		parental_education,
        avg(math_score) avg_math
	from 
		student_performance
	group by parental_education
)
select 
	parental_education,
    avg_math,
    dense_rank() over(order by avg_math desc) math_rank
from group_scores;

-- 5. Students with a 25-point or greater subject-score gap
SELECT student_id, math_score, reading_score, writing_score,
       GREATEST(math_score,reading_score,writing_score)
       - LEAST(math_score,reading_score,writing_score) AS score_gap
FROM 
	student_performance
where
	GREATEST(math_score,reading_score,writing_score)
	- LEAST(math_score,reading_score,writing_score) > 25
order by 
	score_gap 
    desc;

-- 6. Percentage with average score >= 70
SELECT 
	ROUND(100.0 * SUM(
						CASE 
							WHEN (math_score+reading_score+writing_score)/3 >= 70 THEN 1 ELSE 0 
						END
					) 
                    / COUNT(*), 
		2) AS pct_average_70_plus
FROM student_performance;