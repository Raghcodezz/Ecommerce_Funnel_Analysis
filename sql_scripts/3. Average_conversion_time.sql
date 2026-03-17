-- =========================================================
-- Objective: Compare average session duration between
-- users who purchased vs users who did not purchase
-- =========================================================

WITH cte AS (
    -- Step 1: Convert event-level data into session-level data
    SELECT 
        sessionid,
        -- If any event in the session has purchased = 1,
        -- mark the entire session as purchased
        MAX(purchased) AS purchased,

        -- Session start time
        MIN(timestamp) AS entry_time,

        -- Session end time
        MAX(timestamp) AS exit_time,

        -- Calculate total time spent in a session
        CASE 
            -- If only one event in session, use time on page
            WHEN COUNT(*) = 1 
                THEN MAX(timeonpage_seconds)

            -- If multiple events, calculate duration between first and last event
            ELSE DATEDIFF(SECOND, MIN(timestamp), MAX(timestamp)) 
        END AS time_spent

    FROM ecommerce_journey
    GROUP BY sessionid
)

-- Step 2: Group sessions by purchase status
SELECT 

    -- Label sessions as Purchased / Not Purchased
    CASE 
        WHEN purchased = 1 THEN '1 (Purchased)' 
        ELSE '0 (Not Purchased)'
    END AS Purchased,

    -- Calculate average session duration for each group
    AVG(time_spent) AS Session_duration_secs

FROM cte 
GROUP BY purchased;
