-- =========================================================
-- Objective: Understand how many users reach each stage
-- of the funnel and calculate overall conversion from entry
-- =========================================================

WITH cte AS (

    -- Step 1: Count number of users at each page (funnel stage)
    SELECT 
        pagetype,
        COUNT(userid) AS user_count
    FROM ecommerce_journey
    GROUP BY pagetype
)

-- Step 2: Calculate overall conversion relative to home page
SELECT 
    pagetype,
    user_count,

    -- Conversion = (users at current stage / users at home page) * 100
    CAST(
        ROUND(
            user_count * 100.0 / (
                -- Total users who entered the funnel (home page)
                SELECT COUNT(userid) 
                FROM ecommerce_journey
                WHERE pagetype = 'home'
            ), 
        2) 
    AS DECIMAL(10,2)) AS overall_conversion

FROM cte

-- Sorting stages by highest user count
ORDER BY user_count DESC;
