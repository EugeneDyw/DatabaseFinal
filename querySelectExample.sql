            
SELECT c.Year, c.County, e.CurrentEmployment, c.IndexTotal
FROM employment e
	JOIN crime c
		ON c.county = REPLACE(e.AreaName, ' County', '')
			AND c.Year = e.Year;
            
SELECT d.Year, d.Month, d.County, e.CurrentEmployment, d.AverageDuration
FROM employment e
	JOIN insuranceduration d
		ON d.county = REPLACE(e.AreaName, ' County', '')
			AND d.Year = e.Year
            AND d.Month = e.Month;
            
            