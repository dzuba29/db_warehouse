PRAGMA foreign_keys = on;

CREATE TABLE measure_types (
	id INTEGER PRIMARY KEY ASC,
	measure CHAR(6) NOT NULL
);

CREATE TABLE company (
	id INTEGER PRIMARY KEY ASC,
	company_name TEXT(100) NOT NULL
);

CREATE TABLE product_types ( 
	id INTEGER PRIMARY KEY ASC,
	type_name TEXT(100) NOT NULL,
	id_measure_type INTEGER NOT NULL, 
	FOREIGN KEY (id_measure_type) REFERENCES measure_types(id)
);

CREATE TABLE products (
	id INTEGER PRIMARY KEY ASC,
	name_full TEXT(30) NOT NULL,
	name_short TEXT(30) NOT NULL,
	section_number INTEGER NOT NULL,
	shelf_number INTEGER NOT NULL,
	weight INTEGER NOT NULL,
	sizes INTEGER NOT NULL,
	date_in DATE NOT NULL,
	date_out DATE NOT NULL,
	id_product_types INTEGER NOT NULL,
	id_company INTEGER NOT NULL,
	FOREIGN KEY (id_product_types) REFERENCES product_types(id)
	FOREIGN KEY (id_company) REFERENCES company(id)
);



