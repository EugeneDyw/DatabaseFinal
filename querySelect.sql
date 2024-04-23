SELECT b.Year, b.County, b.Month, b.Beneficiaries, b.BenefitAmounts, d.AverageDuration
FROM insuranceduration d
	JOIN insurancebenefits b
		ON b.county = d.county
			AND b.Year = d.Year
            AND b.Month = d.Month;
            
SELECT d.Year, d.Month, d.County, e.CurrentEmployment, d.AverageDuration            
FROM employment e
	JOIN insuranceduration d
		ON d.county = REPLACE(e.AreaName, ' County', '')
			AND d.Year = e.Year
            AND d.Month = e.Month;
            
SELECT b.Year, b.County, b.Month, b.Beneficiaries, b.BenefitAmounts, e.CurrentEmployment
FROM employment e
	JOIN insurancebenefits b
		ON b.County = REPLACE(e.AreaName, ' County', '')
			AND e.Year = b.Year
			AND e.Month = b.Month;
            

            

SELECT e.Year, SUM(e.CurrentEmployment) AS SUMemp, SUM(c.IndexTotal) AS SUMindexc,
		SUM(c.ViolentTotal) AS SUMViolent, SUM(c.PropertyTotal) AS SUMProperty
FROM (SELECT Year, SUM(CurrentEmployment) AS CurrentEmployment
     FROM employment WHERE AreaName = 'New York City'
     GROUP BY Year) e
JOIN (SELECT Year, SUM(IndexTotal) AS IndexTotal, 
				SUM(ViolentTotal) AS ViolentTotal, 
				SUM(PropertyTotal) AS PropertyTotal
     FROM crime WHERE County = 'New York'
     GROUP BY Year) c
ON e.Year = c.Year
GROUP BY e.Year
ORDER BY e.Year;


SELECT c.County, c.Year,
    SUM(e.CurrentEmployment) AS TotalEmployment, 
    SUM(c.IndexTotal) AS TotalCrime,
    SUM(c.ViolentTotal) AS TotalViolent,
    SUM(c.PropertyTotal) AS TotalProperty
FROM crime c
JOIN employment e 
ON c.County = REPLACE(e.AreaName, ' County', '')
WHERE c.Year = 2020 AND e.Year = 2020
GROUP BY c.County;


SELECT e.Year, 
    SUM(e.CurrentEmployment) AS SUMemp, 
    SUM(p1.Population) AS SUMfemalepopu, 
    SUM(p2.Population) AS SUMmalepopu
FROM (SELECT Year, SUM(CurrentEmployment) AS CurrentEmployment
     FROM employment
     WHERE AreaName = 'New York City'
     GROUP BY Year) e
JOIN (SELECT Year, SUM(Population) AS Population
     FROM population
     WHERE County = 'New York City' AND Gender = 'Female'
     GROUP BY Year) p1 
     ON e.Year = p1.Year
JOIN (SELECT Year, SUM(Population) AS Population
     FROM population
     WHERE County = 'New York City' AND Gender = 'Male'
     GROUP BY Year) p2 
     ON e.Year = p2.Year
GROUP BY e.Year
ORDER BY e.Year;





