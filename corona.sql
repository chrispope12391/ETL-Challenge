
CREATE TABLE COUNTRY_VACCINE
(
	country TEXT,
	iso_code TEXT,
	date TEXT,
	total_vaccinations INT ,
	people_vaccinated INT,
	people_fully_vaccinated INT,
	daily_vaccinations_raw INT,
	daily_vaccinations INT,
	total_vaccinations_per_hundred INT,
	people_vaccinated_per_hundred INT,
	people_fully_vaccinated_per_hundred INT,
	daily_vaccinations_per_million INT,
	vaccines TEXT,
	source_name TEXT,
	source_website TEXT,
	date_country TEXT primary key
	
);


CREATE TABLE daily_corona
(
	date TEXT,
	country TEXT,
	cumulative_total_cases INT,
	daily_new_cases INT,
	active_cases INT,
	cumulative_total_deaths INT,
	daily_new_deaths INT,
	date_country TEXT primary key
);

SELECT * FROM COUNTRY_VACCINE;
 
SELECT * FROM daily_corona;

SELECT daily_corona.date_country, daily_corona.daily_new_cases, daily_corona.daily_new_deaths, COUNTRY_VACCINE.daily_vaccinations, COUNTRY_VACCINE.total_vaccinations 
FROM daily_corona
INNER JOIN COUNTRY_VACCINE
ON daily_corona.date_country = COUNTRY_VACCINE.date_country;

