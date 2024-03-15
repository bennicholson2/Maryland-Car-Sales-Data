USE maryland_project_database;

CREATE TABLE monthly_car_sales
(
  new_cars_sold INT NOT NULL,
  used_cars_sold INT NOT NULL,
  values_new_cars_sold BIGINT NOT NULL,
  value_used_cars_sold BIGINT NOT NULL,
  month DATE,
  PRIMARY KEY (month)
);

CREATE TABLE yearly_car_sales
(
  new_cars_sold INT NOT NULL,
  used_cars_sold INT NOT NULL,
  value_new_cars_sold BIGINT NOT NULL,
  value_used_cars_sold BIGINT NOT NULL,
  year DATE,
  PRIMARY KEY (year)
);

CREATE TABLE yearly_economic_data
(
  average_annual_pay INT NOT NULL,
  gdp_maryland BIGINT NOT NULL,
  inflation_rate_cpi FLOAT NOT NULL,
  average_weekly_wage INT NOT NULL,
  total_wages_thousands BIGINT NOT NULL,
  year DATE,
  FOREIGN KEY (year) REFERENCES yearly_car_sales(year)
);

CREATE TABLE socioeconomic_data
(
  maryland_population BIGINT NOT NULL,
  total_workforce BIGINT NOT NULL,
  year DATE,
  FOREIGN KEY (year) REFERENCES yearly_car_sales(year)
);

CREATE TABLE monthly_economic_data
(
  inflation_rate_cpi FLOAT NOT NULL,
  unemployment_rate_not_sa FLOAT NOT NULL,
  unemployment_rate_sa FLOAT NOT NULL,
  month DATE,
  FOREIGN KEY (month) REFERENCES monthly_car_sales(month)
);

