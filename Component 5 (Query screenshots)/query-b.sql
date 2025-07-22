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
    YEAR(aq.Date_Time) = 2022
    AND TIME(aq.Date_Time) BETWEEN '07:30:00' AND '08:30:00'
GROUP BY 
    s.Name;
    
-- I used the station name from the station table and then compute the average
-- values of PM2_5 and VPM2_5 and specified the AirQualityMeasurement table as the main table so as to join it with the station table.
-- I linked the Station_Site_ID in AirQualityMeasurement to Site_ID in Station.
-- The Where function was used to filter the records to fit the specified date and also restricted it to the specified time. 
-- 