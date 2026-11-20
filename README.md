# Sales Data Analysis Using PostgreSQL and GitHub Copilot

## Project Overview

This project explores sales data using PostgreSQL and GitHub Copilot in Visual Studio Code.

The objective is to answer business questions using SQL, identify sales trends, evaluate customer and product performance, and translate query results into actionable business insights.

GitHub Copilot is used to assist with SQL development, while generated queries are reviewed, validated, and executed against a PostgreSQL database.

## Tools and Technologies

- PostgreSQL
- SQL
- Visual Studio Code
- GitHub Copilot
- SQLTools
- Git and GitHub

## Database Overview

The project uses a PostgreSQL database with the following main tables:

- **orders:** Sales transactions and order information.
- **customers:** Customer details and country information.
- **products:** Product names, categories, and prices.
- **employees:** Employee and department information.

See [database_schema.md](database_schema.md) for the documented schema.

## Analysis and Business Questions

### 1. Sales Performance by Country

**Business Question:** Which countries generate the highest total sales, and how many orders does each country have?

SQL concepts:
- INNER JOIN
- SUM()
- COUNT()
- GROUP BY
- ORDER BY

Query: [01_sales_by_country.sql](sql/01_sales_by_country.sql)

Findings: Germany generated 200 in sales across 4 orders, while the USA generated 180 across 6 orders.

See [business_insights.md](analysis/business_insights.md) for the interpretation.

## Upcoming Analyses

- Monthly sales trends
- Product and category performance
- Customer analysis
- Employee performance

## Project Goals

- Strengthen practical SQL and data analysis skills.
- Use GitHub Copilot for AI-assisted SQL development.
- Validate AI-generated queries against actual database results.
- Translate query results into meaningful business insights.
- Maintain a reproducible and well-documented analytics portfolio.

## Disclaimer

This project is intended for learning and portfolio development. Database credentials and private connection details are not included in this repository.