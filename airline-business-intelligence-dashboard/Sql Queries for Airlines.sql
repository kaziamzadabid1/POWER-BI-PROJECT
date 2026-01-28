CREATE DATABASE airline_bi;
USE airline_bi;


CREATE TABLE flights (
    id INT AUTO_INCREMENT PRIMARY KEY,
    gender VARCHAR(10),
    customer_type VARCHAR(20),
    class VARCHAR(20),
    flight_distance INT,
    departure_delay INT,
    arrival_delay INT,
    otp_status VARCHAR(10),
    satisfaction VARCHAR(20)
    
);

select * from flights; 

SELECT 
ROUND(
(SUM(CASE WHEN otp_status = 'On Time' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2
) AS otp_percentage
FROM flights;

SELECT AVG(arrival_delay) AS avg_delay
FROM flights;

SELECT satisfaction, COUNT(*) AS total
FROM flights
GROUP BY satisfaction;

SELECT satisfaction, AVG(arrival_delay) AS avg_delay
FROM flights
GROUP BY satisfaction;


