SELECT * FROM cleaned_ride_bookings LIMIT 10;

SELECT 
    Vehicle_Type, 
    SUM(Booking_Value) AS Total_Revenue,
    ROUND(AVG(Booking_Value), 2) AS Average_Ride_Value
FROM 
    cleaned_ride_bookings
WHERE 
    Booking_Status = 'Success'
GROUP BY 
    Vehicle_Type
ORDER BY 
    Total_Revenue DESC;
    
    SELECT 
    Booking_Status, 
    COUNT(*) AS Total_Rides,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_ride_bookings), 2) AS Percentage
FROM 
    cleaned_ride_bookings
GROUP BY 
    Booking_Status
ORDER BY 
    Total_Rides DESC;
    
    SELECT 
    Pickup_Location, 
    COUNT(*) AS Total_Rides
FROM 
    cleaned_ride_bookings
GROUP BY 
    Pickup_Location
ORDER BY 
    Total_Rides DESC
LIMIT 5;    
    
    SELECT 
    Vehicle_Type, 
    ROUND(AVG(Customer_Rating), 2) AS Avg_Rating
FROM 
    cleaned_ride_bookings
WHERE 
    Customer_Rating IS NOT NULL
GROUP BY 
    Vehicle_Type
ORDER BY 
    Avg_Rating DESC;
    
    SELECT 
    Vehicle_Type, 
    ROUND(AVG(Customer_Rating), 2) AS Avg_Rating
FROM 
    cleaned_ride_bookings
WHERE 
    Customer_Rating IS NOT NULL
GROUP BY 
    Vehicle_Type
ORDER BY 
    Avg_Rating DESC;