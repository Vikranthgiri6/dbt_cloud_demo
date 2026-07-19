{{ config(materialized='table') }}

select employee_id
,first_name,
last_name,
gender,job_title,
salary,hire_date,email,phone
from DBT_CLOUD.DBT_SCHEMA.EMPLOYEE where department='IT'