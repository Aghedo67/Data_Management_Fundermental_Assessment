SELECT 
    s.Name AS Station_Name,
    AVG(aq.PM2_5) AS Mean_PM2_5,
    AVG(aq.VPM2_5) AS Mean_VPM2_5
FROM 
    AirQualityMeasurement aq
JOIN 
    Station s
ON 
    aq.Station_Site_ID = s.Site_ID
WHERE 
    TIME(aq.Date_Time) BETWEEN '07:30:00' AND '08:30:00'
GROUP BY 
    s.Name;