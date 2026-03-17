-- =========================================================
-- Objective: Analyze how number of items in cart impacts
-- conversion rate (likelihood of purchase)
-- =========================================================

WITH cte AS (

    -- Step 1: Aggregate data at session level
    SELECT 
        sessionid,

        -- Get maximum number of items added to cart in the session
        MAX(itemsincart) AS itemsincart,

        -- Mark session as purchased if any event has purchased = 1
        MAX(purchased) AS purchased

    FROM ecommerce_journey
    GROUP BY sessionid
)

-- Step 2: Calculate conversion rate for each items-in-cart group
SELECT 
    itemsincart,

    -- Conversion rate = (sessions with purchase / total sessions) * 100
    CAST(
        ROUND((SUM(purchased) * 100.0 / COUNT(*)), 2)
        AS DECIMAL(10,2)
    ) AS conversion_rate

FROM cte

-- Group by number of items in cart
GROUP BY itemsincart 

-- Sort in ascending order of items in cart
ORDER BY itemsincart;
