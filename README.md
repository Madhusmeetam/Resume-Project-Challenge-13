# [Resume Project Challenge - 13](https://codebasics.io/challenge/codebasics-resume-project-challenge)

### Provide Insights to Chief of Operations in Transportation Domain

## Overview:
Goodcabs, a leading cab service in tier-2 Indian cities, aims to evaluate its 2024 performance across key metrics such as trip volume, passenger satisfaction, repeat passenger rate, and trip distribution. Due to an urgent request from the Chief of Operations, the analysis has been assigned to  a data analyst. This project will deliver actionable insights to support growth and enhance passenger satisfaction while maintaining a balance between new and repeat passengers.

## Table of Contents:

- [Project Presentation](#project-presentation)
- [Live Dashboard](#live-dashboard)
- [Tools & Technique used](#tools--technique)
- [Problem Statement](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/problem_statement.pdf) 
- [Goal & Purpose](#goal--purpose)
- [Data Source](#data-source)
- [Data Modeling](#data-modeling)
- [Key Metrics](#key-metrics)
- [Dashboard Overview](#dashboard-overview)
- [Primary Analysis](#primary-analysis)
- [Secondary Analysis](#secondary-analysis)
- [Recommendations](#recommendations)


## Project Presentation:

<p align="center">
<a href="https://youtu.be/Xt1VSAsUzK4" target="_blank">
  <img src=" https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Provide%20Insights%20%26%20Performance%20Analysis%20In%20Transportation%20Domain%20(2).png" 
    alt="Presentation Preview" style="width: 70%; max-width: 360px;">
  
</a>
</p>

## Live Dashboard:

Checkout the live dashboard here 👉🏻 [Live Dashboard](https://app.powerbi.com/groups/me/reports/df245e0f-7c90-4f3f-bfb2-18b19882e9dd/33d3607f9592ebce0103?bookmarkGuid=13e79a6f-27a3-4064-862b-975afe41b4e7&bookmarkUsage=1&ctid=c6e549b3-5f45-4032-aae9-d4244dc5b2c4&portalSessionId=b6931f8a-10e1-45a3-aece-2634ca183202&fromEntryPoint=export)


## Tools & Technique:
- Data Analysis
   - Microsoft Excel (v 2021)
   - Microsoft Power BI Desktop
   - Power BI Service
   - Power Query
   - Data Modeling
   - DAX (Data Analysis Expression)
   - ETL (Extract, Transformation & Load)

- Project Documentation
   - Git & Github
     

- Video Recording & Presentation

   - Canva (for thumbnail)
   - Microsoft Clipchamp - Video Editor
   - Microsoft Power Point

## Problem Statement:
Goodcabs, a cab service company, operates in 10 tier-2 cities in India and supports local drivers while providing excellent service to passengers. The company has set ambitious growth and passenger satisfaction targets for 2024. 

The Chief of Operations needs immediate insights into key performance metrics, including trip volume, passenger satisfaction, repeat passenger rate, trip distribution, and the balance between new and repeat passengers. 

However, due to the analytics manager's unavailability, the task has been assigned to me, to analyze these metrics and deliver actionable insights.


## Goal & Purpose:
The goal of this project is to deliver actionable insights on Goodcabs' performance in 10 "tier-2" cities by analyzing key metrics,

- Identify growth opportunities by understanding trip trends. 
- Enhance passenger satisfaction through targeted improvements. 
- Boost customer retention by increasing repeat passenger rates. 
- Optimize operations by balancing new and repeat passenger engagement. 
- Support strategic decision-making to achieve 2024 performance targets. 

## Data Source:

The datasets are provided by Codebasics. Here you can see the overview:

 Dataset Overview 


  <p align="center">
    <img src="https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/data%20overview.jpg" alt="Dataset Overview" >
  </p>


Meta Data 

> For understanding the dataset in details, [Click Here](./meta_data.txt) to view meta data details of given database and tables. 

> [!NOTE]
> I have created one more table named "start of month" from dim_date table.
> In this table, there are 3 columns start of month, month name and month no.   


Additionally, I have added "City Category" dataset which is created based on latest information available on internet. You can see the table [here](./datasets/city-category.csv) 


> [!IMPORTANT]
> Data is available from January 2024 to June 2024(6 Month).

## Data Modeling
Here you can check the Data Model which is used for this project. 


<img src="https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Data%20Model/data%20model.png" alt="Data Model Preview" >


## Key Metrics:

1. Total Trips
2. Total Fare (Revenue)
3. Total Distance Travelled 
4. Average Rating
  - Passenger Rating
  - Driver Rating
5. Average Fare per Trip (Average Trip Cost)
6. Average Fare per Km
7. Average Trip Distance
8. Trip Distance (Max, Min)
9. Trip Type:
  - New Trips
  - Repeated Trips
10.	Total Passengers
11. New Passengers
12.	Repeat Passengers
13.	New vs. Repeated Passenger Trips Ratio
14.	Repeat Passenger Rate (%)
15.	Revenue Growth Rate (Monthly)
16.	Target Achievement Rate:
  - Trips Target
  - New Passenger Target
  - Average Passenger Rating Target


## Dashboard Overview:

 Home Page 

 ![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/home.png)


 
Trip View 

 Provides insights on the proportion of new vs. repeat trips, helping gauge passenger loyalty. Displays the average number of trips per driver, highlighting workload imbalances. Analyzes average trip durations and identifies delays based on city and time patterns.

![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/trip%20analysis.png)



Passenger View

 Measures passenger satisfaction levels per city to evaluate service quality. Tracks the percentage of repeat passengers, indicating customer retention success. Breaks down passenger demographics (age, gender) to understand key customer segments.



![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Passenger%20dashboard.png)



 Operation View 

Shows trip volume trends across 10 tier-2 cities, highlighting total trips completed per month. Compares city-wise trip distribution, identifying high and low-performing cities. Tracks vehicle utilization and peak-month trip data to identify bottlenecks.

![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Performanceoverview.png)



## Primary Analysis: 

1. Identify the top 3 and bottom 3 cities by total trips over the entire analysis period.
![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Images/pq1.png?raw=true)


2. Calculate the average fare per trip for each city and compare it with the city's average trip distance. Identify the cities with the highest and lowest average fare per trip to assess pricing efficiency across locations.

![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Images/pq2.png?raw=true)
     

3. Calculate the average passenger and driver ratings for each city, segmented by passenger type (new vs. repeat). Identify cities with the highest and lowest average ratings.


![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Images/pq3.png?raw=true)  


4. For each city, identify the month with the highest total trips (peak demand) and the month with the lowest total trips (low demand). 

![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Images/pq4.png?raw=true)


5. Compare the total trips taken on weekdays versus weekends for each city over the six-month period. Identify cities with a strong preference for either weekend or weekday trips to understand demand variations.

![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Images/pq5.png)


6. Identify which cities contribute most to higher trip frequencies among repeat passengers, and examine if there are distinguishable patterns between tourism-focused and business-focused cities.

 ![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Images/pq6.png)


7. For each city, evaluate monthly performance against targets for total trips, new passengers, and average passenger ratings. Determine if each metric met, exceeded, or missed the target, and calculate the percentage difference.

![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Images/pq7.png)


8. Identify the top 2 and bottom 2 cities based on their RPR% to determine which locations have the strongest and weakest rates. Similarly, analyze the RPR% by month across all cities and identify the months with the highest and lowest repeat passenger rates.

    ![image](https://github.com/Madhusmeetam/Resume-Project-Challenge-13/blob/main/Images/pq8.png)


   

## Secondary Analysis:

1. Factors Influencing Repeat Passenger Rates

- Passenger Satisfaction: Higher repeat passenger rates often align with better ratings, reflecting quality service.
Competitive Pricing: Affordable fares attract more repeat passengers in price-sensitive cities.
Socioeconomic Trends: Premium services appeal to high-income groups, while cost-effective options suit lower-income areas.
Lifestyle Habits: IT hubs or professional cities see consistent repeat usage during weekdays due to work commutes.

2. Tourism vs. Business Demand Impact

- Event Correlation: Trip data linked to event calendars shows demand spikes during festivals and tourism seasons.
-Tourism Hotspots: Cities like Jaipur and Kochi see increased rides during festive seasons or vacation periods.
-Business Hubs: Cities like Lucknow and Surat exhibit steady weekday demand driven by professional commutes.


3. Emerging Mobility Trends and Goodcabs' Adaptation

-Analyze developments in mobility needs, passenger preferences for green energy, and the uptake of electric vehicles. 
-Adoption of Electric Vehicles (EVs): Tier-2 cities are increasingly choosing environmentally friendly transportation. EVs have the potential to save operating expenses and attract eco-aware travelers.
-Sustainability Focus: Low-emission and ride-sharing solutions are preferred by environmentally aware travelers


4. Partnership Opportunities with Local Businesses

-Partner with Hotels: Provide reliable transportation for guests, gaining consistent demand from tourists and business travelers.
-Collaborate with Shopping Malls: Offer discounts for rides to malls, boosting foot traffic and ride bookings during peak hours.
-Tie-Up with Event Venues: Ensure on-demand rides for events, leveraging high-volume bookings and exclusive promo codes.
-Tourism Partnerships: Work with travel agencies to offer curated packages like city tours, ensuring steady demand during tourist seasons.
-Loyalty Programs: Reward customers with points redeemable at partner businesses, enhancing loyalty for both brands.
-Dedicated Branding Zones: Set up branded pickup/drop-off points at malls, hotels, and event venues for visibility.
-Integrate Technology: Enable seamless cab bookings via partner apps with in-app promotions and discounts.


5. Data Collection for Enhanced Data-Driven Decisions

-Understand Customer Behavior: Track ride history, preferences, and feedback to improve satisfaction, identify loyalty trends, and address churn through personalized services.
-Improve Operational Efficiency: Monitor driver performance, ride fulfillment, and fleet utilization while reducing downtime with real-time GPS tracking and automated maintenance logs.
-Stay Ahead with Market Trends: Analyze seasonal demand, competitive pricing, and demographic insights to adapt services and create tailored promotions for specific customer groups.
-Boost Financial Performance: Measure revenue per ride, optimize promotions, and break down operating costs to identify areas for growth and cost-saving opportunities.


## Recommendations:

- Focus on improving service quality and offering personalized pricing plans for cities with lower repeat rates.
- Tailor marketing efforts to highlight tourism-related campaigns in high-demand periods and offer flexible services for business travelers e.g., loyalty program, ride packages for conferences.
- Gradually integrate electric or hybrid vehicles in tier-2 cities to stay competitive and consider offering discounts on eco-friendly rides.
- Collaborate with local businesses to offer joint promotions for e.g., free rides for shopping above a certain spend.
- Establish partnerships with event venues for exclusive discounts or bundled deals.
- Invest in a feedback system to collect qualitative data on passenger satisfaction and driver performance. Use predictive analytics to optimize supply-demand matching.
