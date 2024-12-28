# [Resume Project Challenge - 13](https://codebasics.io/challenge/codebasics-resume-project-challenge)

### Provide Insights to Chief of Operations in Transportation Domain

## Overview:
Goodcabs, a leading cab service in tier-2 Indian cities, aims to evaluate its 2024 performance across key metrics such as trip volume, passenger satisfaction, repeat passenger rate, and trip distribution. Due to an urgent request from the Chief of Operations, the analysis has been assigned to  a data analyst. This project will deliver actionable insights to support growth and enhance passenger satisfaction while maintaining a balance between new and repeat passengers.

## Table of Contents:

- [Project Presentation](#project-presentation)
- [Live Dashboard](#live-dashboard)
- [Tools & Technique used](#tools--technique)
- [Problem Statement](#problem-statement)
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
<a href="https://youtu.be/Mt6Jaf3Tkus" target="_blank">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge13/refs/heads/master/images/rpc13-project-thumbnail.png" alt="Presentation Preview" style="width: 70%; max-width: 360px;">
  
</a>
</p>

## Live Dashboard:

Checkout the live dashboard here 👉🏻 [Live Dashboard](https://shorturl.at/K6C2w)


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
    <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge13/refs/heads/master/images/data-overview.png" alt="Dataset Overview" >
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


<img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge13/refs/heads/master/data_model/data_model.png" alt="Data Model Preview" >


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

 ![image](https://github.com/user-attachments/assets/fd804734-61fa-47de-8de4-49185e4c5764)


 


Trip View 

 Provides insights on the proportion of new vs. repeat trips, helping gauge passenger loyalty. Displays the average number of trips per driver, highlighting workload imbalances. Analyzes average trip durations and identifies delays based on city and time patterns.

![image](https://github.com/user-attachments/assets/f629568c-024a-4e76-98c0-638072998bbf)



Passenger View

 Measures passenger satisfaction levels per city to evaluate service quality. Tracks the percentage of repeat passengers, indicating customer retention success. Breaks down passenger demographics (age, gender) to understand key customer segments.



![image](https://github.com/user-attachments/assets/58eeb4ea-c12d-4a3f-bd88-bb55df13d769)



 Operation View 

Shows trip volume trends across 10 tier-2 cities, highlighting total trips completed per month. Compares city-wise trip distribution, identifying high and low-performing cities. Tracks vehicle utilization and peak-month trip data to identify bottlenecks.

![image](https://github.com/user-attachments/assets/f3243e8e-8605-4a11-b7a8-bca53ebba2b8)



## Primary Analysis: 

1. Identify the top 3 and bottom 3 cities by total trips over the entire analysis period.
![image](https://github.com/user-attachments/assets/6fcdc79e-1ffe-423f-9035-80a6ec95d76a)


2. Calculate the average fare per trip for each city and compare it with the city's average trip distance. Identify the cities with the highest and lowest average fare per trip to assess pricing efficiency across locations.

![image](https://github.com/user-attachments/assets/9e9014f0-a367-424f-bfed-78bf5ed775c9)
     

3. Calculate the average passenger and driver ratings for each city, segmented by passenger type (new vs. repeat). Identify cities with the highest and lowest average ratings.


![image](https://github.com/user-attachments/assets/326d95f8-c20e-45e4-ac64-484217721d75)    





4. For each city, identify the month with the highest total trips (peak demand) and the month with the lowest total trips (low demand). 

![image](https://github.com/user-attachments/assets/a625254b-60bb-4305-aad7-0b15a369109a)


5. Compare the total trips taken on weekdays versus weekends for each city over the six-month period. Identify cities with a strong preference for either weekend or weekday trips to understand demand variations.

![image](https://github.com/user-attachments/assets/654e2b2d-fbaa-477a-a792-906d2a63a4ea)


6. Identify which cities contribute most to higher trip frequencies among repeat passengers, and examine if there are distinguishable patterns between tourism-focused and business-focused cities.

 ![image](https://github.com/user-attachments/assets/63b578f5-7510-47b1-a32f-1c7ef56af9b0)


7. For each city, evaluate monthly performance against targets for total trips, new passengers, and average passenger ratings. Determine if each metric met, exceeded, or missed the target, and calculate the percentage difference.

![image](https://github.com/user-attachments/assets/4846d2de-951c-4cbb-b57c-311317385e82)


8. Identify the top 2 and bottom 2 cities based on their RPR% to determine which locations have the strongest and weakest rates. Similarly, analyze the RPR% by month across all cities and identify the months with the highest and lowest repeat passenger rates.

    ![image](https://github.com/user-attachments/assets/cab5e012-8652-4eab-8bd0-c899d471b9c5)


   

## Secondary Analysis:

1. Factors Influencing Repeat Passenger Rates

- Higher repeat passenger rates may correlate with better passenger ratings, indicating quality service.
- Competitive pricing might attract more repeat passengers in cities with a price-sensitive demographic.
- Socioeconomic factors: Cities with higher-income groups may prefer premium services, whereas lower-income groups may prefer cost-effective services.
- Lifestyle patterns: Cities with high professional populations (e.g., IT hubs) may show consistent repeat usage during weekdays.

2. Tourism vs. Business Demand Impact

- Cross-referenced trip data with event calendars (festivals, conferences, tourism seasons) over 6 months.
- Cities with high tourism activities (e.g., Jaipur, Kochi) show demand spikes during festive seasons or vacations.
- Business-oriented cities (e.g., Lucknow, Surat) show consistent weekday demand.

3. Emerging Mobility Trends and Goodcabs' Adaptation

- Evaluate trends like adoption of electric vehicles, passenger preferences for green energy, and emerging mobility needs.
- Electric Vehicle (EV) Adoption: Growing preference for green transport in tier-2 cities. EV could reduce operational costs and appeal to environmentally conscious passengers.
- Sustainability Focus: Eco-conscious passengers favor ride-sharing and low-emission options.

4. Partnership Opportunities with Local Businesses

- Reviewed trip destinations to identify potential partnerships with hotels, malls, and event venues.
- Popular tourist destinations and business centers could be leveraged for tie-ups.
- Partnerships with event venues (e.g., offering discounts for rides to events) could drive loyalty

5. Data Collection for Enhanced Data-Driven Decisions

- Passenger data: Frequency of use, feedback on service quality, and referral usage.
- Driver data: Availability, on-time performance, and training status.
- Market trends: Competition metrics like pricing and service offerings in each city.
- City-specific events: Add event calendars to better predict demand fluctuations

## Recommendations:

- Focus on improving service quality and offering personalized pricing plans for cities with lower repeat rates.
- Tailor marketing efforts to highlight tourism-related campaigns in high-demand periods and offer flexible services for business travelers e.g., loyalty program, ride packages for conferences.
- Gradually integrate electric or hybrid vehicles in tier-2 cities to stay competitive and consider offering discounts on eco-friendly rides.
- Collaborate with local businesses to offer joint promotions for e.g., free rides for shopping above a certain spend.
- Establish partnerships with event venues for exclusive discounts or bundled deals.
- Invest in a feedback system to collect qualitative data on passenger satisfaction and driver performance. Use predictive analytics to optimize supply-demand matching.
