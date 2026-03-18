-- =========================================================
-- Objective: Analyze cart abandonment distribution across
-- different referral sources
-- =========================================================

WITH cte AS (

    -- Step 1: Convert event-level data into session-level data
    SELECT 
        sessionid,
        referralsource,

        -- Get maximum number of items added to cart in a session
        MAX(itemsincart) AS itemsincart,

        -- Mark session as purchased if any event has purchased = 1
        MAX(purchased) AS purchased

    FROM ecommerce_journey
    GROUP BY sessionid, referralsource
),

abandoned AS (

    -- Step 2: Filter sessions where users added items
    -- but did NOT complete purchase (cart abandonment)
    SELECT *
    FROM cte 
    WHERE itemsincart > 0 
      AND purchased = 0
)

-- Step 3 (debug/check): Total number of abandoned sessions
SELECT COUNT(*) 
FROM abandoned;

-- Step 4: Calculate percentage distribution of abandoned sessions by referral source
SELECT
    referralsource,

    -- Percentage = (abandoned sessions from each source / total abandoned sessions) * 100
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS Percentage

FROM abandoned

-- Group by referral source
GROUP BY referralsource

-- Sort by highest contribution to abandonment
ORDER BY COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() DESC;
