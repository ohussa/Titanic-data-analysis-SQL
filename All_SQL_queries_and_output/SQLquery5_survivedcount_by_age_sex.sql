SELECT CASE 
	WHEN age<=10 THEN 10
	WHEN age>10 AND age<=20 THEN 20
	WHEN age>20 AND age<=30 THEN 30
	WHEN age>30 AND age<=40 THEN 40
	WHEN age>40 AND age<=50 THEN 50
	WHEN age>50 AND age<=60 THEN 60
	WHEN age>60 AND age<=70 THEN 70
	WHEN age>70 AND age<=80 THEN 80
	WHEN age>80 AND age<=90 THEN 90
	WHEN age>90 AND age<=100 THEN 100
END AS age_bin,sex,COUNT(survived) AS count_survived FROM complete_passengers
WHERE survived=1
GROUP BY age_bin,sex ORDER BY age_bin,sex;