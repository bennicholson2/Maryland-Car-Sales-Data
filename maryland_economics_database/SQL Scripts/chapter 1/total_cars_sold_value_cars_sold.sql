USE maryland_project_database;
ALTER TABLE yearly_car_sales
ADD COLUMN total_cars_sold BIGINT AS (new_cars_sold + used_cars_sold);

