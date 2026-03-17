-- =========================================================
-- Objective: Analyze monthly conversion rate
-- (how many visitors end up purchasing each month)
-- =========================================================

WITH monthly_summary AS (

    -- Step 1: Aggregate data at monthly level
    SELECT 
        -- Numeric month (used for correct sorting)
        MONTH(timestamp) AS mn,

        -- Month name (for readability)
        DATENAME(MONTH, timestamp) AS month,

        -- Total visits (all records)
        COUNT(*) AS total_visits,

        -- Total purchases (assuming purchased = 1 for success)
        SUM(purchased) AS total_purchases,

        -- Conversion rate = (purchases / total visits) * 100
        CAST(
            ROUND((SUM(purchased) * 100.0 / COUNT(*)), 2)
            AS DECIMAL(10,2)
        ) AS conversion_rate

    FROM ecommerce_journey

    -- Grouping by both numeric month and month name
    GROUP BY 
        MONTH(timestamp),
        DATENAME(MONTH, timestamp)
)

-- Step 2: Select required fields for final output
SELECT 
    mn,
    month,
    conversion_rate

FROM monthly_summary

-- Sort by month number to maintain correct order (Jan → Dec)
ORDER BY mn;
