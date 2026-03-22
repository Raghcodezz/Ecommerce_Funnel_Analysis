# User Journey Funnel Analysis

## Business Problem
Many users visit an e-commerce platform but do not complete the purchase. Most of the customers drop off in the middle or they just add the products to cart and abandon. Due to this company fails to understand the customer behavior and also the loses revenue.

## Goal of the project
The main objective of this project is to understand how customers move through e-commerce funnel and identify the points where they lose interest and drop off.
- Finding the weakest stage in the funnel - where customers drop off usually.
- Analyzing the performance across various devices and traffic sources - to see how mobile, desktop and tablet users behave differently
- Recommending actionable improvements - simple UI/UX changes, fixing of pricing etc.

## Main metrics used
 - *To Next Step Conversion* - How much percentage of customers move to next stage of the funnel.
 - *Overall Conversion* - measures percentage of customers who made a purchase out of total number of customers who entered the funnel.
 - *Average Time Spent* - tells us how long the users stay on site, helping us understand the engagement levels.
 - *Cart abandonment rate* - shows the percentage of users who add the items to the cart but do not make a purchase.

## Data Analysis and Visuals
This section highlights the analysis performed on customers to understand their behavior across each stage of funnel ie where they drop off, how much time they spend on each stage. The visuals make it easier to understand the patterns in the data and compare performance across devices and traffic sources.

### Conversion rate by Month

The conversion rate is not constant through out the year. The highest conversion rate was recorded in march (around 41%) and lowest was recorded in february (around 37%).

![image](https://github.com/Raghcodezz/Ecommece_Funnel_Analysis/blob/27caf6431e71d3a9592a4cc2a7652964ec370c0a/Converison%20per%20Month.png)


### Funnel Analysis

In the funnel analysis we can clearly observe that there is a problem in product page. Most of the users drop off at this stage of funnel from 79% to 32% (59% decrease). This could be due to unclear product listings, higher prices, limited options to choose. This bring down the revenue drastically and this can be fixed by fixing the prices, providing clear listing and options which could help the users continue to cart and complete the purchase.

![image](https://github.com/Raghcodezz/Ecommece_Funnel_Analysis/blob/611bac97f2d0d3ec13acf1a7cc9e7656cb56b542/Funnel%20Drop%202.png)


### Average Time to Conversion

People who end up purchasing a product spend more time in the application (around 388 sec) when compared to a non-buyer (around 114 sec). This shows higher engagement rate often leads to higher conversion. Encouraging users to explore more pages or interact longer can improve their chances of making a purchase.


| Purchased       | Session Duration (seconds) |
|:----------------|:---------------------------|
| 0 (Not Purchased) | 114.00                     |
| 1 (Purchased)   | 388.24                     |


### Conversion rate by country

France has the highest conversion rate, meaning people there are more likely to buy after visiting the site. Countries like the USA, India, and the UK are not far behind — all show similar buying patterns.

![image](https://github.com/Raghcodezz/Ecommece_Funnel_Analysis/blob/611bac97f2d0d3ec13acf1a7cc9e7656cb56b542/Conversion%20rate%20by%20country.png)


### Conversion rate by items in cart

Users who add more number of items to their cart are more likely to make a purchase more than those with 1 or 2 items in cart.

![image](https://github.com/Raghcodezz/Ecommece_Funnel_Analysis/blob/611bac97f2d0d3ec13acf1a7cc9e7656cb56b542/Conversion%20rate%20by%20itemsincart.png)

Customers with 3 items in the cart show highest conversion rate (around 54%).


### Conversion Rate by Referral Source

Visitors from Google and Direct sources convert slightly better than visitors from other sources. This indicates people who search for the application in google or access the application are more likely to make a purchase. So we need to optimize SEO more in these two sources to attract more people.

![image](https://github.com/Raghcodezz/Ecommece_Funnel_Analysis/blob/611bac97f2d0d3ec13acf1a7cc9e7656cb56b542/Conversion%20rate%20by%20referral%20source.png)


### Time on each page by Buyers and Non Buyers

Both buyers and non-buyers spend almost equal time on each page. This indicates that keeping the customer hooked for long time doesn't gurantee a purchase. What really matters is quality and clarity of the content.

![image](https://github.com/Raghcodezz/Ecommece_Funnel_Analysis/blob/611bac97f2d0d3ec13acf1a7cc9e7656cb56b542/avg%20time%20spend%20by%20buyer%20and%20non%20buyer.png)


### Cart Abandonment rate by device

Cart abandonment rates are almost similar across all devices. This indicates that the issue is not limited to a specific segment, but rather a universal problem such as complex UI/UX, a complicated checkout process, or high prices that may be causing customers to abandon their carts.

![image](https://github.com/Raghcodezz/Ecommece_Funnel_Analysis/blob/611bac97f2d0d3ec13acf1a7cc9e7656cb56b542/cart%20abandonment%20rate%20by%20device.png)


### Cart Abandonment rate by Referral Source

Cart abandonment rates are almost similar across all referral sources. This indicates that the issue is not limited to a specific segment, but rather a universal problem such as complex UI/UX, a complicated checkout process, or high prices that may be causing customers to abandon their carts.

![image](https://github.com/Raghcodezz/Ecommece_Funnel_Analysis/blob/611bac97f2d0d3ec13acf1a7cc9e7656cb56b542/cart%20abandonment%20rate%20by%20referral%20source.png)


### Top Insights

- The biggest drop occurs on the product page, where almost 60% of customers drop off.
- Buyers spend more time on the platform compared to non-buyers, indicating that improving content and engagement could help keep users interested and increase conversion chances.
- More items added to the cart are associated with higher conversion rates.
- Visitors coming from direct traffic and Google are more likely to convert and complete a purchase.
- Cart abandonment rates are similar across all referral sources and devices, indicating the issue is not limited to a specific segment. The problem may be related to factors such as high pricing, poor UI/UX, or a complex checkout process.


### Business Impact

- Improved Conversion Rate: Identifying the major drop-off at the product page helps prioritise UX improvements that could reduce the 60% drop-off and increase conversions.
- Higher marketing ROI: Focussing and promoting more marketing campaigns in referral sources like direct and google can increase converions easily.
- Better Customer Experience: Fixing complex UI/UX issues and simplifying the user journey can further reduce cart abandonment rates and increase conversion rates.


### Future Improvements

- If more data becomes available, the analysis can be extended to evaluate conversion rates across product categories, age groups, gender, and geographic segments (such as Tier 1, Tier 2, and Tier 3 cities).

- Build a machine learning model to predict in advance where users are most likely to drop off in the funnel.

