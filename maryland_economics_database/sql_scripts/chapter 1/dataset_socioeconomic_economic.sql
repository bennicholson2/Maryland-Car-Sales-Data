SELECT yearly_economic_data.*, yearly_car_sales.total_cars_sold
FROM yearly_economic_data
LEFT JOIN yearly_car_sales ON yearly_economic_data.year = yearly_car_sales.year;
