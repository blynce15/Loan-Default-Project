# Embedded Lending SQL Analytics Project

This project demonstrates a practical SQL-based analysis of merchant loans data, focusing on loan amounts, default rates, and merchant profiles across different sectors and regions. The dataset and queries simulate a typical embedded lending scenario, where merchants receive loans and lenders monitor default risks and business metrics.

---

## Project Overview

The goal of this project is to analyze merchant loan data through SQL, generating key insights relevant to embedded lending platforms. The dataset includes 50 sample loans with details such as loan amount, term, interest rate, region, sector, merchant annual revenue, and whether the loan defaulted.

This project includes:

- Creating a database and table to store merchant loan data.
- Inserting sample loan records.
- Writing SQL queries to answer important business questions.
- Creating SQL views for summarizing defaulted loans and regional loan statistics.

---

## Database Schema

**Table:** `merchant_loans`

| Column          | Data Type     | Description                             |
|-----------------|---------------|-------------------------------------|
| `loan_id`       | INT (PK)      | Unique identifier for each loan       |
| `merchant_id`   | INT           | Identifier for the merchant            |
| `issued_date`   | DATE          | Date the loan was issued               |
| `loan_amount`   | DECIMAL(10,2) | Amount of the loan                     |
| `term_months`   | INT           | Loan term in months                    |
| `interest_rate` | DECIMAL(4,2)  | Annual interest rate percentage        |
| `region`        | VARCHAR(20)   | Geographic region                      |
| `sector`        | VARCHAR(50)   | Business sector of the merchant       |
| `annual_revenue`| DECIMAL(12,2) | Annual revenue of the merchant        |
| `default_flag`  | BOOLEAN       | Whether the loan defaulted (TRUE/FALSE) |

---

## Business Questions & SQL Queries

The project includes SQL queries to answer questions such as:

1. What is the average loan amount per sector?
2. What is the default rate by region?
3. Which merchants borrowed the most in total?
4. What is the average loan amount for defaulted vs. non-defaulted loans?
5. What is the average annual revenue for merchants with and without defaults?

You can find these queries in the provided SQL script.

---

## SQL Views

Two views are created to facilitate analysis:

- `defaulted_loans_summary`: Contains detailed info on all loans that defaulted.
- `region_loan_statistics`: Aggregated loan statistics per region, including total loans, average loan amount, average interest rate, total defaults, and default rate percentage.

---