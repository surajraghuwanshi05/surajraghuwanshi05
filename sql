-- Rename the "paymentDate" column in the Payment table to "transactionDate".

SELECT paymentDat AS 'transactionDate'
FROM Payment

-- 4. Find a specific customer by email.
SELECT CustomerID , firstName lastName,phoneNumber
FROM Customer 
WHERE email = 'whatever@gmail.com'

-- 5. Get active leases for a specific customer.


-- 6. Find all payments made by a customer with a specific phone number.
SELECT a.phone 

-- 7. Calculate the average daily rate of all available cars.
SELECT AVG(dailyRate) 
FROM Vehicle 
WHERE available != 0
-- 8. Find the car with the highest daily rate.
SELECT  make, model, max(dailyRate) AS  MAX_dailyRate
FROM Vehicle
GROUP BY make, model
ORDER BY MAX_dailyRate DESC
LIMIT 1;
-- 9. Retrieve all cars leased by a specific customer.
SELECT c.make, c.model, 
FROM vehcle as c
INNER JOIN Lease as L ON c.carID = L.carID
INNER JOIN Customer as b ON b.customerID = L.customerID
WHERE firstName = 'xyz'



-- 10. Find the details of the most recent lease.
SELECT leaseID, carID, customerID, MAX(startDate), endDate leaseType
FROM 

-- 11. List all payments made in the year 2023.
SElECT amount, paymentDate
FROM payment
WHERE EXTRACT( YEAR FROM paymentDate) = 2023
-- 12. Retrieve customers who have not made any payments.

-- 13. Retrieve Car Details and Their Total Payments.
-- 14. Calculate Total Payments for Each Customer.



-- 15. List Car Details for Each Lease.
-- 16. Retrieve Details of Active Leases with Customer and Car Information.
-- 17. Find the Customer Who Has Spent the Most on Leases.
-- 18. List All Cars with Their Current Lease Information
