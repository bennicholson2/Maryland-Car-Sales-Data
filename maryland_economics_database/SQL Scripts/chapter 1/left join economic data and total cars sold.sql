USE maryland_project_database;

SELECT yearly_economic_data.*, socioeconomic_data.maryland_population, socioeconomic_data.total_workforce, 
	yearly_car_sales.new_cars_sold,
    yearly_car_sales.used_cars_sold,
    yearly_car_sales.value_new_cars_sold,
    yearly_car_sales.value_used_cars_sold,
    yearly_car_sales.total_cars_sold,
    yearly_car_sales.total_value_cars_sold
FROM yearly_economic_data
LEFT JOIN yearly_car_sales ON yearly_economic_data.year = yearly_car_sales.year
LEFT JOIN socioeconomic_data ON yearly_economic_data.year = socioeconomic_data.year;

SELECT monthly_car_sales.*,
	monthly_economic_data.inflation_rate_cpi, 
	monthly_economic_data.unemployment_rate_not_sa, monthly_economic_data.unemployment_rate_sa
    FROM monthly_economic_data
    LEFT JOIN monthly_car_sales on monthly_economic_data.month = monthly_car_sales.month;

DESCRIBE socioeconomic_data;