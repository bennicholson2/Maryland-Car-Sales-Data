USE maryland_project_database;
ALTER TABLE yearly_car_sales
ADD COLUMN total_cars_sold BIGINT AS (new_cars_sold + used_cars_sold);

USE maryland_project_database;
ALTER TABLE yearly_car_sales
ADD COLUMN total_value_cars_sold BIGINT as (value_new_cars_sold + value_used_cars_sold);

USE maryland_project_database;
ALTER TABLE monthly_car_sales
ADD COLUMN total_cars_sold BIGINT AS (new_cars_sold + used_cars_sold);

USE maryland_project_database;
ALTER TABLE monthly_car_sales
ADD COLUMN total_value_cars_sold BIGINT as (values_new_cars_sold + value_used_cars_sold);