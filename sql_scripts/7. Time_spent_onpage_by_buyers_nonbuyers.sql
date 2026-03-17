SELECT 
    pagetype,
    case 
         when purchased=0 then 'Non_buyer'
         else  'Buyer' end as purchased,
    ROUND(AVG(timeonpage_seconds),2) AS avg_time_spent
FROM ecommerce_journey
GROUP BY pagetype, purchased
ORDER BY pagetype, purchased;
