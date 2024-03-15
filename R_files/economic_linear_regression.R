total_car_sales <- cars_sold_economic_socioeconomic_data
value_total_car_sales <- value_cars_sold_economic_socioeconomic_data

total_car_sales$maryland_population <- as.integer(as.character(total_car_sales$maryland_population))
total_car_sales$total_workforce <- as.integer(as.character(total_car_sales$total_workforce))

value_total_car_sales$maryland_population <- as.integer(as.character(value_total_car_sales$maryland_population))
value_total_car_sales$total_workforce <- as.integer(as.character(value_total_car_sales$total_workforce))