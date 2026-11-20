# Sales Database Schema

Database schema: `sales`  
Database platform: PostgreSQL

## Customers

### customers
- customerid: integer (Primary Key)
- firstname: character varying
- lastname: character varying
- country: character varying
- score: integer

### db_customers
- customerid: integer
- firstname: character varying
- lastname: character varying
- country: character varying
- score: integer

## Employees

### employees
- employeeid: integer (Primary Key)
- firstname: character varying
- lastname: character varying
- department: character varying
- birthdate: date
- gender: character
- salary: integer
- managerid: integer

### employee_logs
- logid: integer (Primary Key)
- employee_id: integer
- log_message: character varying
- log_date: date

## Orders

### orders
- orderid: integer (Primary Key)
- productid: integer
- customerid: integer
- salespersonid: integer
- orderdate: date
- shipdate: date
- orderstatus: character varying
- shipaddress: character varying
- billaddress: character varying
- quantity: integer
- sales: integer
- creationtime: timestamp without time zone

### order_test
Same column structure as `orders`. Primary key and foreign key constraints have not been confirmed.

### ordersarchive
Same column structure as `orders`. Primary key and foreign key constraints have not been confirmed.

## Products

### products
- productid: integer (Primary Key)
- product: character varying
- category: character varying
- price: integer

## Partitioning Practice

### orders_partitioned
- order_id: integer
- order_date: date
- sales: numeric

Partitions:
- orders_2023
- orders_2024
- orders_2025
- orders_after_2025

## Views

### v_mothly_summary
- order_month: double precision
- total_sales: bigint
- total_count: bigint
- total_qualtity: bigint

### v_order_details and v_order_details_eu
- orderid: integer
- product: character varying
- category: character varying
- customer_name: text
- customercountry: character varying
- employee_name: text
- department: character varying
- orderdate: date
- sales: integer
- quantity: integer

## Confirmed Constraints

Primary keys:
- customers.customerid
- employee_logs.logid
- employees.employeeid
- orders.orderid
- products.productid

No foreign key constraints were returned by the metadata query.

Note: Nullability, default values, and additional constraints have not yet been documented.