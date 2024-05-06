
---------------------------------------------------------------------------------------------------

#API: Descriptive Analytics Query

#Business Question: 
#What are the peak and off-peak months for SpaceX launches?
SELECT 
    month,
    launch_count,
    DENSE_RANK() OVER (ORDER BY launch_count DESC) AS 'rank'
FROM (
    SELECT 
        DATE_FORMAT(launch_date, '%Y-%m') AS month,
        COUNT(*) AS launch_count
    FROM 
        Launches
    GROUP BY 
        month
) AS MonthlyLaunches
ORDER BY 
    month;

#Insight
#Peak launch activity occurs in August and October with 7 launches each, while months like February, July, and September often see only one launch.

#Recommendation
#SpaceX should optimize operations and resources for peak months and plan strategic activities during off-peak times.

#Prediction
#The observed seasonal trends in launch frequency are likely to persist, guiding operational planning.

---------------------------------------------------------------------------------------------------

#API: Descriptive Analytics Query

#Business Question: 
#Which months have the highest frequency of launches for a specific mission?

WITH MonthlyLaunchDetails AS (
    SELECT 
        DATE_FORMAT(L.launch_date, '%Y-%m') AS launch_month,
        M.mission_name,
        COUNT(L.id) AS total_launches
    FROM 
        Launches L
    JOIN 
        Missions M ON L.id = M.id
    GROUP BY 
        launch_month, M.mission_name
)
SELECT 
    launch_month,
    mission_name,
    total_launches
FROM 
    MonthlyLaunchDetails
ORDER BY 
    total_launches DESC
LIMIT 5;



#Insight
#The month of July 2022 and August 2022 each saw the highest number of launches (5) for the Starlink Mission, indicating peak operational activity during mid-year. 

#Recommendation
#Focus resource allocation and scheduling efforts on mid-year months to capitalize on operational peaks, optimizing launch schedules and public relations efforts.

#Prediction
#Given the pattern, it's likely that mid-year months will continue to experience higher launch frequencies, particularly for recurring missions like Starlink. 
