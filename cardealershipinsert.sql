CREATE OR REPLACE FUNCTION adding_vehicle(
	_vin VARCHAR,
	_make VARCHAR,
	_model VARCHAR,
	_car_year INTEGER,
	_miles INTEGER,
	_last_updated DATE,
	_condtion VARCHAR,
	_customer_id INTEGER
)

	RETURNS void
	AS $MAIN$
	BEGIN
		INSERT INTO car(vin, make, model, car_year, miles, last_updated, condtion, customer_id)VALUES(
			_vin,
			_make,
			_model,
			_car_year,
			_miles,
			_last_updated,
			_condtion,
			_customer_id
);
	END;
	$MAIN$
	LANGUAGE plpgsql;


SELECT adding_vehicle(
	CAST('JTDAT1230Y5017131' AS VARCHAR),
	CAST('Chevy' AS VARCHAR),
	CAST('Spark' AS VARCHAR),
	2021,
	15,
	CAST('2021-05-17' AS DATE),
	CAST('NEW' AS VARCHAR),
	1
);

SELECT adding_vehicle(
	CAST('4F2CU08102KM50866' AS VARCHAR),
	CAST('Audi' AS VARCHAR),
	CAST('A8' AS VARCHAR),
	2019,
	2000,
	CAST('2021-08-18' AS DATE),
	CAST('USED' AS VARCHAR),
	3
);

SELECT adding_vehicle(
	CAST('JN1CV6AP4CM626941' AS VARCHAR),
	CAST('Jeep' AS VARCHAR),
	CAST('Wrangler' AS VARCHAR),
	2015,
	50000,
	CAST('2021-01-12' AS DATE),
	CAST('USED' AS VARCHAR),
	2
);

INSERT INTO customer(
	first_name,
	last_name
)VALUES(
	'Ryan',
	'Rhoades'
);

INSERT INTO customer(
	first_name,
	last_name
)VALUES(
	'Jon',
	'Loveland'
);

INSERT INTO customer(
	first_name,
	last_name
)VALUES(
	'Terrel',
	'McKinney'
);

INSERT INTO mechanic(
	first_name,
	last_name
)VALUES(
	'Joe',
	'Blow'
);

INSERT INTO mechanic(
	first_name,
	last_name
)VALUES(
	'John',
	'Doe'
);

INSERT INTO sales_people(
	first_name,
	last_name
)VALUES(
	'Jimi',
	'Hendrix'
);

INSERT INTO sales_people(
	first_name,
	last_name
)VALUES(
	'Elvis',
	'Presley'
);

INSERT INTO finance(
	finance_type,
	institution_name
)VALUES(
	'Bitcoin',
	'Coinbase'
);

INSERT INTO finance(
	finance_type,
	institution_name
)VALUES(
	'USD',
	'Chase Bank'
);

INSERT INTO service(
	service_type,
	service_date,
	amount,
	customer_id,
	vin
)VALUES(
	'Oil Change',
	'2021-02-25',
	85.25,
	2,
	'JN1CV6AP4CM626941'
);

INSERT INTO service(
	service_type,
	service_date,
	amount,
	customer_id,
	vin
)VALUES(
	'Wax',
	'2021-05-17',
	150.00,
	1,
	'JTDAT1230Y5017131'
);

INSERT INTO service_order(
	service_id,
	mechanic_id,
	task_description,
	parts_used
)VALUES(
	1,
	1,
	'Customer needs oil change and blinker fluid filled.',
	'1 pint of Bobs Synthetic Oil, Half gallon of standard blinker fluid.'
);

INSERT INTO service_order(
	service_id,
	mechanic_id,
	task_description,
	parts_used
)VALUES(
	2,
	2,
	'Customer needs new car waxed and lookin good.',
	'Sallys Premium Wax coat.'
);

INSERT INTO invoice(
	sales_person_id,
	customer_id,
	amount,
	transaction_date,
	finance_id,
	vin
)VALUES(
	1,
	1,
	15000.00,
	'2021-05-17',
	1,
	'JTDAT1230Y5017131'
);

INSERT INTO invoice(
	sales_person_id,
	customer_id,
	amount,
	transaction_date,
	finance_id,
	vin
)VALUES(
	2,
	3,
	50000.00,
	'2021-08-18',
	2,
	'4F2CU08102KM50866'
);

SELECT *
FROM car;

SELECT *
FROM customer;

SELECT *
FROM finance;

SELECT *
FROM invoice;

SELECT *
FROM mechanic;

SELECT *
FROM sales_people;

SELECT *
FROM service;

SELECT *
FROM service_order;





