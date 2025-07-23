# SQL Analytics Project

CREATE DATABASE IF NOT EXISTS Embedded_Lending DEFAULT CHARACTER SET = 'utf8' DEFAULT COLLATE 'utf8_general_ci';
USE Embedded_lending;

CREATE TABLE merchant_loans (
    loan_id INT PRIMARY KEY,
    merchant_id INT,
    issued_date DATE,
    loan_amount DECIMAL(10,2),
    term_months INT,
    interest_rate DECIMAL(4,2),
    region VARCHAR(20),
    sector VARCHAR(50),
    annual_revenue DECIMAL(12,2),
    default_flag BOOLEAN
);


INSERT INTO merchant_loans (
    loan_id, merchant_id, issued_date, loan_amount, term_months, interest_rate,
    region, sector, annual_revenue, default_flag
)
VALUES
(1, 1001, '2023-01-15', 25000.00, 12, 8.5, 'West', 'Retail', 500000.00, FALSE),
(2, 1002, '2023-03-10', 15000.00, 6, 10.2, 'South', 'E-commerce', 300000.00, TRUE),
(3, 1003, '2023-04-25', 40000.00, 18, 7.9, 'Northeast', 'Services', 800000.00, FALSE),
(4, 1004, '2023-02-28', 10000.00, 6, 12.5, 'Midwest', 'Retail', 120000.00, TRUE),
(5, 1005, '2023-06-01', 30000.00, 12, 9.3, 'West', 'Hospitality', 450000.00, FALSE),
(6, 1006, '2023-05-15', 22000.00, 9, 11.0, 'South', 'E-commerce', 250000.00, FALSE),
(7, 1007, '2023-01-05', 35000.00, 12, 8.0, 'Northeast', 'Retail', 600000.00, FALSE),
(8, 1008, '2023-07-12', 18000.00, 6, 13.1, 'Midwest', 'Food Services', 200000.00, TRUE),
(9, 1009, '2023-06-18', 27000.00, 12, 9.8, 'South', 'E-commerce', 350000.00, FALSE),
(10, 1010, '2023-03-01', 32000.00, 15, 7.5, 'West', 'Services', 900000.00, FALSE),
(11, 1011, '2023-02-15', 24000.00, 12, 9.1, 'Midwest', 'Retail', 400000.00, FALSE),
(12, 1012, '2023-05-10', 16000.00, 6, 10.5, 'South', 'E-commerce', 275000.00, FALSE),
(13, 1013, '2023-04-20', 38000.00, 18, 8.0, 'Northeast', 'Services', 825000.00, FALSE),
(14, 1014, '2023-03-18', 9000.00, 6, 12.8, 'West', 'Retail', 150000.00, TRUE),
(15, 1015, '2023-07-01', 29000.00, 12, 9.5, 'Midwest', 'Hospitality', 480000.00, FALSE),
(16, 1016, '2023-06-14', 21000.00, 9, 11.3, 'South', 'Retail', 310000.00, FALSE),
(17, 1017, '2023-02-07', 36000.00, 12, 8.2, 'Northeast', 'E-commerce', 620000.00, FALSE),
(18, 1018, '2023-08-12', 17000.00, 6, 13.5, 'West', 'Food Services', 210000.00, TRUE),
(19, 1019, '2023-06-28', 26000.00, 12, 9.6, 'South', 'Retail', 365000.00, FALSE),
(20, 1020, '2023-03-12', 31000.00, 15, 7.6, 'Midwest', 'Services', 875000.00, FALSE),
(21, 1021, '2023-01-20', 23000.00, 12, 8.4, 'Northeast', 'Retail', 410000.00, FALSE),
(22, 1022, '2023-05-25', 14000.00, 6, 10.7, 'South', 'E-commerce', 285000.00, TRUE),
(23, 1023, '2023-04-10', 37000.00, 18, 8.1, 'West', 'Services', 820000.00, FALSE),
(24, 1024, '2023-02-22', 9500.00, 6, 12.6, 'Midwest', 'Retail', 160000.00, TRUE),
(25, 1025, '2023-06-03', 31000.00, 12, 9.4, 'Northeast', 'Hospitality', 470000.00, FALSE),
(26, 1026, '2023-05-18', 20000.00, 9, 11.1, 'South', 'E-commerce', 295000.00, FALSE),
(27, 1027, '2023-01-10', 34000.00, 12, 8.3, 'West', 'Retail', 610000.00, FALSE),
(28, 1028, '2023-08-05', 16000.00, 6, 13.3, 'Midwest', 'Food Services', 190000.00, TRUE),
(29, 1029, '2023-07-14', 27500.00, 12, 9.9, 'South', 'E-commerce', 345000.00, FALSE),
(30, 1030, '2023-03-03', 33000.00, 15, 7.7, 'Northeast', 'Services', 890000.00, FALSE),
(31, 1031, '2023-01-28', 24500.00, 12, 8.6, 'Midwest', 'Retail', 390000.00, FALSE),
(32, 1032, '2023-06-08', 15500.00, 6, 10.4, 'South', 'E-commerce', 265000.00, TRUE),
(33, 1033, '2023-05-01', 39500.00, 18, 8.3, 'West', 'Services', 810000.00, FALSE),
(34, 1034, '2023-02-26', 8700.00, 6, 12.3, 'Northeast', 'Retail', 155000.00, TRUE),
(35, 1035, '2023-06-30', 28500.00, 12, 9.2, 'Midwest', 'Hospitality', 460000.00, FALSE),
(36, 1036, '2023-05-20', 21500.00, 9, 11.2, 'South', 'E-commerce', 305000.00, FALSE),
(37, 1037, '2023-01-12', 35500.00, 12, 8.1, 'West', 'Retail', 590000.00, FALSE),
(38, 1038, '2023-07-20', 16500.00, 6, 13.2, 'Northeast', 'Food Services', 220000.00, TRUE),
(39, 1039, '2023-06-22', 26500.00, 12, 9.7, 'Midwest', 'E-commerce', 340000.00, FALSE),
(40, 1040, '2023-03-15', 31500.00, 15, 7.8, 'South', 'Services', 870000.00, FALSE),
(41, 1041, '2023-02-18', 25500.00, 12, 8.8, 'West', 'Retail', 420000.00, FALSE),
(42, 1042, '2023-05-28', 14500.00, 6, 10.8, 'Northeast', 'E-commerce', 280000.00, TRUE),
(43, 1043, '2023-04-05', 38500.00, 18, 8.4, 'South', 'Services', 815000.00, FALSE),
(44, 1044, '2023-03-25', 9200.00, 6, 12.7, 'West', 'Retail', 145000.00, TRUE),
(45, 1045, '2023-07-03', 29500.00, 12, 9.6, 'Midwest', 'Hospitality', 455000.00, FALSE),
(46, 1046, '2023-06-17', 20500.00, 9, 11.4, 'Northeast', 'E-commerce', 315000.00, FALSE),
(47, 1047, '2023-01-18', 34500.00, 12, 8.0, 'South', 'Retail', 605000.00, FALSE),
(48, 1048, '2023-08-08', 17500.00, 6, 13.4, 'Midwest', 'Food Services', 195000.00, TRUE),
(49, 1049, '2023-07-10', 28000.00, 12, 10.0, 'Northeast', 'Retail', 355000.00, FALSE),
(50, 1050, '2023-03-07', 33500.00, 15, 7.9, 'West', 'Services', 885000.00, FALSE);



-- BUSINESS QUESTIONS --

#1. What is the average loan amount per sector?
SELECT 
    sector,
    ROUND(AVG(loan_amount), 2) AS avg_loan_amount
FROM merchant_loans
GROUP BY sector
ORDER BY avg_loan_amount DESC;


#2. What is the default rate by region?
SELECT 
    region,
    COUNT(*) AS total_loans,
    SUM(default_flag) AS total_defaults,
    ROUND(SUM(default_flag) / COUNT(*) * 100, 2) AS default_rate_pct
FROM merchant_loans
GROUP BY region
ORDER BY default_rate_pct DESC;


#3. Which merchants borrowed the most in total?
SELECT 
    merchant_id,
    COUNT(*) AS num_loans,
    ROUND(SUM(loan_amount), 2) AS total_borrowed
FROM merchant_loans
GROUP BY merchant_id
ORDER BY total_borrowed DESC
LIMIT 10;


#4. What is the average loan amount for defaulted vs. non-defaulted loans?
SELECT 
    default_flag,
    ROUND(AVG(loan_amount), 2) AS avg_loan_amount,
    COUNT(*) AS loan_count
FROM merchant_loans
GROUP BY default_flag;


#5. What is the average annual revenue for merchants with and without defaults?
SELECT 
    default_flag,
    ROUND(AVG(annual_revenue), 2) AS avg_annual_revenue,
    COUNT(*) AS loan_count
FROM merchant_loans
GROUP BY default_flag;



-- VIEWS --

CREATE VIEW defaulted_loans_summary AS
SELECT
    loan_id,
    merchant_id,
    issued_date,
    loan_amount,
    term_months,
    interest_rate,
    region,
    sector,
    annual_revenue
FROM merchant_loans
WHERE default_flag = TRUE;

#Testing
SELECT * FROM defaulted_loans_summary WHERE sector = 'Retail';



CREATE VIEW region_loan_statistics AS
SELECT
    region,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_amount), 2) AS avg_loan_amount,
    ROUND(AVG(interest_rate), 2) AS avg_interest_rate,
    SUM(default_flag) AS total_defaults,
    ROUND(SUM(default_flag)/COUNT(*) * 100, 2) AS default_rate_pct
FROM merchant_loans
GROUP BY region;


#Testing
SELECT * FROM region_loan_statistics ORDER BY default_rate_pct DESC;


