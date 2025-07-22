SELECT 
    aq.Date_Time, 
    s.Name AS Station_Name, 
    MAX(aq.NOx) AS Max_NOx
FROM 
    AirQualityMeasurement aq
JOIN 
    Station s
ON 
    aq.Station_Site_ID = s.Site_ID
WHERE 
    YEAR(aq.Date_Time) = 2022
GROUP BY 
    s.Name, aq.Date_Time
ORDER BY 
    Max_NOx DESC
LIMIT 1;
