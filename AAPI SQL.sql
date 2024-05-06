
---------------------------------------------------------------------------------------------------

#Web Scrape: Descriptive Analytics Query

#Business Question: 
#How many satellites are exlipsed and how many aren't?

WITH EclipsedCounts AS (
    SELECT 
        is_eclipsed,
        COUNT(*) AS num_observations
    FROM 
        Satellite_Astronomy
    GROUP BY 
        is_eclipsed
)
SELECT 
    is_eclipsed,
    num_observations,
    SUM(num_observations) OVER () AS total_observations,
    (num_observations * 100.0 / SUM(num_observations) OVER ()) AS percentage_of_total
FROM 
    EclipsedCounts;



#Insight
#Eclipsed and non-eclipsed observations are almost equally likely, each constituting roughly half of the total observations.

#Recommendation
#Monitor any shifts in this balance to detect environmental or operational changes.

#Prediction
#Expect this balance to persist unless operational parameters change.

---------------------------------------------------------------------------------------------------

#Web Scrape: Descriptive Analytics Query

#Business Question: 
#Is there a correlation between the elevation angles of satellites and the incidence of them being eclipsed?

WITH ElevationEclipsed AS (
    SELECT 
        SP.elevation,
        SA.is_eclipsed,
        COUNT(*) OVER (PARTITION BY SA.is_eclipsed) AS eclipsed_count
    FROM 
        Satellite_Positions SP
    JOIN 
        Satellite_Astronomy SA ON SP.satellite_id = SA.satellite_id
    WHERE 
        SA.is_eclipsed IS NOT NULL
)
SELECT 
    elevation,
    is_eclipsed,
    eclipsed_count,
    dense_RANK() OVER (ORDER BY elevation DESC) AS rank_by_elevation
FROM 
    ElevationEclipsed;


#Insight
#A significant proportion of the data shows eclipsed satellites, suggesting variations in satellite visibility and operational conditions. 

#Recommendation
#Investigate the causes of these eclipses to optimize satellite orbits and improve reliability.

#Prediction
#Adjustments to orbits could reduce eclipse occurrences, enhancing the consistency of satellite operations. 
