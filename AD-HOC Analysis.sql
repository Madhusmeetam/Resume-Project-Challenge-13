
-- 1) City-Level Fare and Trip Summary Report
/* Generate a report that displays the total trips, average fare per km, average fare per trip, and the percentage contribution of each city's trips to the overall trips. This report will help in assessing 
trip volume, pricing efficiency, and each city's contribution to the overall trip count.

Fields: city_name, total_trips, avg_fare_per_km, avg_fare_per_trip, %_contribution_to_total_trips */
SELECT 
    c.city_name,
    COUNT(t.trip_id) AS total_trips,
    ROUND(SUM(t.fare_amount) / SUM(t.distance_travelled_km), 2) AS avg_fare_per_km,
    ROUND(AVG(t.fare_amount), 2) AS avg_fare_per_trip,
    ROUND((COUNT(t.trip_id) * 100.0) / SUM(COUNT(t.trip_id)) OVER(), 2) AS pct_total_trips
FROM 
    trips_db.dim_city c
JOIN 
    trips_db.fact_trips t 
    ON c.city_id = t.city_id
GROUP BY 
    c.city_name;
    
  -- 2) Monthly City-Level Trips Target Performance Report
/* Generate a report that evaluates the target performance for trips at the monthly and city level. For each city and month, compare the actual total trips with the target trips and categorise 
the performance as follows:
	If actual trips are greater than target trips, mark it as "Above Target".
	If actual trips are less than or equal to target trips, mark it as "Below Target".
    
Additionally, calculate the % difference between actual and target trips to quantify the performance gap.
Fields: City_name, month name, actual_trips, target_trips, performance_status, % difference */
  
     SELECT 
    c.city_name,
    d.month_name,
    COUNT(t.trip_id) AS actual_trips,
    tt.total_target_trips AS target_trips,
    CASE 
        WHEN COUNT(t.trip_id) > tt.total_target_trips THEN 'Above Target'
        ELSE 'Below Target'
    END AS performance_status,
    ROUND(((COUNT(t.trip_id) - tt.total_target_trips) * 100.0) / tt.total_target_trips, 2) AS pct_difference
FROM 
    trips_db.dim_city c
JOIN 
    trips_db.fact_trips t 
    ON c.city_id = t.city_id
JOIN 
    trips_db.dim_date d 
    ON t.date = d.date
JOIN 
    targets_db.monthly_target_trips tt 
    ON c.city_id = tt.city_id AND d.start_of_month = tt.month
GROUP BY 
    c.city_name, d.month_name, tt.total_target_trips;

-- 3) City-Level Repeat Passenger Trip Frequency Report
/* Generate a report that shows the percentage distribution of repeat passengers by the number of trips they have taken in each city. Calculate the percentage of repeat passengers who took 2 trips, 3 trips, and so on, up to 10 trips.
Each column should represent a trip count category, displaying the percentage of repeat passengers who fall into that category out of the total repeat passengers for that city.
This report will help identify cities with high repeat trip frequency, which can indicate strong customer loyalty or frequent usage patterns.

Fields: city_name, 2-Trips, 3-Trips, 4-Trips, 5-Trips, 6-Trips, 7-Trips, 8-Trips, 9-Trips, 10-Trips */

SELECT 
    dc.city_name,
    ROUND(SUM(CASE WHEN drd.trip_count = 2 THEN drd.repeat_passenger_count ELSE 0 END) * 100.0 / SUM(drd.repeat_passenger_count),2) AS `2-Trips`,
    ROUND(SUM(CASE WHEN drd.trip_count = 3 THEN drd.repeat_passenger_count ELSE 0 END) * 100.0 / SUM(drd.repeat_passenger_count),2) AS `3-Trips`,
    ROUND(SUM(CASE WHEN drd.trip_count = 4 THEN drd.repeat_passenger_count ELSE 0 END) * 100.0 / SUM(drd.repeat_passenger_count),2) AS `4-Trips`,
    ROUND(SUM(CASE WHEN drd.trip_count = 5 THEN drd.repeat_passenger_count ELSE 0 END) * 100.0 / SUM(drd.repeat_passenger_count),2) AS `5-Trips`,
    ROUND(SUM(CASE WHEN drd.trip_count = 6 THEN drd.repeat_passenger_count ELSE 0 END) * 100.0 / SUM(drd.repeat_passenger_count),2) AS `6-Trips`,
    ROUND(SUM(CASE WHEN drd.trip_count = 7 THEN drd.repeat_passenger_count ELSE 0 END) * 100.0 / SUM(drd.repeat_passenger_count),2) AS `7-Trips`,
    ROUND(SUM(CASE WHEN drd.trip_count = 8 THEN drd.repeat_passenger_count ELSE 0 END) * 100.0 / SUM(drd.repeat_passenger_count),2) AS `8-Trips`,
    ROUND(SUM(CASE WHEN drd.trip_count = 9 THEN drd.repeat_passenger_count ELSE 0 END) * 100.0 / SUM(drd.repeat_passenger_count),2) AS `9-Trips`,
    ROUND(SUM(CASE WHEN drd.trip_count = 10 THEN drd.repeat_passenger_count ELSE 0 END) * 100.0 / SUM(drd.repeat_passenger_count),2) AS `10-Trips`
FROM 
    trips_db.dim_repeat_trip_distribution drd
JOIN 
    trips_db.dim_city dc ON drd.city_id = dc.city_id
GROUP BY 
    dc.city_name ;
    
  -- 4) Identify Cities with Highest and Lowest Total New Passengers
/* Generate a report that calculates the total new passengers for each city and ranks them based on this value. Identify the top 3 cities with the highest number of new passengers as well as the bottom 3 cities 
with the lowest number of new passengers, categorising them as "Top 3" or "Bottom 3" accordingly.

FieldS: city_name, total new_passengers, city_category ("Top 3" or "Bottom 3") */

WITH RankedCities AS (
    SELECT 
        c.city_name,
        SUM(ps.new_passengers) AS total_new_passengers,
        RANK() OVER (ORDER BY SUM(ps.new_passengers) DESC) AS rank_desc,
        RANK() OVER (ORDER BY SUM(ps.new_passengers)) AS rank_asc
    FROM 
        trips_db.dim_city c
    JOIN 
        trips_db.fact_passenger_summary ps 
        ON c.city_id = ps.city_id
    GROUP BY 
        c.city_name
)
SELECT 
    city_name,
    total_new_passengers,
    CASE 
        WHEN rank_desc <= 3 THEN 'Top 3'
        WHEN rank_asc <= 3 THEN 'Bottom 3'
    END AS city_category
FROM 
    RankedCities
WHERE 
    rank_desc <= 3 OR rank_asc <= 3;

-- 5) Identify Month with Highest Revenue for Each City
/* Generate a report that identifies the month with the highest revenue for each city. For each city, display the month_name, the revenue amount for that month, and the percentage contribution of 
that month's revenue to the city's total revenue.

Fields: city_name, highest_revenue month, revenue, percentage_contribution (%) */


WITH CityMonthlyRevenue AS (
    SELECT 
        c.city_name,
        d.month_name,
        SUM(t.fare_amount) AS total_revenue,
        SUM(SUM(t.fare_amount)) OVER (PARTITION BY c.city_name) AS city_total_revenue
    FROM 
        trips_db.dim_city c
    JOIN 
        trips_db.fact_trips t 
        ON c.city_id = t.city_id
    JOIN 
        trips_db.dim_date d 
        ON t.date = d.date
    GROUP BY 
        c.city_name, d.month_name
),
RankedRevenue AS (
    SELECT 
        city_name,
        month_name,
        total_revenue,
        city_total_revenue,
        RANK() OVER (PARTITION BY city_name ORDER BY total_revenue DESC) AS revenue_rank
    FROM 
        CityMonthlyRevenue
)
SELECT 
    city_name,
    month_name AS highest_revenue_month,
    total_revenue AS revenue,
    ROUND((total_revenue * 100.0) / city_total_revenue, 2) AS pct_contribution
FROM 
    RankedRevenue
WHERE 
    revenue_rank = 1;
    
    
    -- 6) Repeat Passenger Rate Analysis
/* Generate a report that calculates two metrics:
1.	Monthly Repeat Passenger Rate: Calculate the repeat passenger rate for each city and month by comparing the number of repeat passengers to the total passengers.
2.	City-wide Repeat Passenger Rate: Calculate the overall repeat passenger rate for each city, considering all passengers across months.

These metrics will provide insights into monthly repeat trends as well as the overall repeat behaviour for each city.

Fields: city_name, month, total_passengers, repeat_passengers, monthly_repeat_passenger_rate (%): Repeat passenger rate at the city and month level, 
city_repeat_passenger_rate (%): Overall repeat passenger rate for each city aggregated across months */

WITH MonthlyRepeatRate AS (
    SELECT 
        c.city_name,
        ps.month,
        ps.total_passengers,
        ps.repeat_passengers,
        ROUND((ps.repeat_passengers * 100.0) / ps.total_passengers, 2) AS monthly_repeat_passenger_rate
    FROM 
        trips_db.dim_city c
    JOIN 
        fact_passenger_summary ps 
        ON c.city_id = ps.city_id
),
CityWideRepeatRate AS (
    SELECT 
        city_name,
        ROUND((SUM(repeat_passengers) * 100.0) / SUM(total_passengers), 2) AS city_repeat_passenger_rate
    FROM 
        MonthlyRepeatRate
    GROUP BY 
        city_name
)
SELECT 
    mrr.city_name,
    mrr.month,
    mrr.total_passengers,
    mrr.repeat_passengers,
    mrr.monthly_repeat_passenger_rate,
    cwr.city_repeat_passenger_rate
FROM 
    MonthlyRepeatRate mrr
JOIN 
    CityWideRepeatRate cwr 
    ON mrr.city_name = cwr.city_name ;

    
    