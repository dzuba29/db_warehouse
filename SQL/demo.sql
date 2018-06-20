--продукты
INSERT INTO products(name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES ( --1
	'Микрофон AKG C577WR',
	'Микрофон-петличка',
	5,
	4,
	500,
	20,
	'2017-03-03',
	'2017-04-03',
	1, --тип продукта
	1  --компания
);

INSERT INTO products(name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES ( --2
	'Микрофон вокальный AKG D40S',
	'Микрофон-вокал',
	5,
	5,
	100,
	4,
	'2017-07-09',
	'2017-11-09',
	1,
	1
);

INSERT INTO products(name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES ( --3
	'Кабель с пласт. изоляцией',
	'Пласт.изоляция',
	10,
	9,
	100,
	4,
	'2017-12-09',
	'2017-12-19',
	2,
	1
);

INSERT INTO products(name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES ( --4
	'Кабель с бум. изоляцией',
	'Бум.изоляция',
	10,
	10,
	100,
	4,
	'2017-11-09',
	'2017-11-11',
	2,
	1
);

INSERT INTO products(name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES ( --5
	'Промышленное освещение',
	'Пром.осв.',
	15,
	10,
	100,
	4,
	'2017-07-03',
	'2017-07-15',
	3,
	1
);

INSERT INTO products(name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES ( --6
	'Аварийное освещение',
	'Авар.осв.',
	15,
	11,
	200,
	10,
	'2017-07-03',
	'2017-07-15',
	3,
	1
);

INSERT INTO products(name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES ( --7
	'Пергамент пищевой',
	'Пищ.бумага',
	20,
	1,
	15,
	10,
	'2017-01-09',
	'2017-01-11',
	4,
	2
);

INSERT INTO products(name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES ( --8
	'Бумага для гофрирования',
	'Гофр',
	20,
	2,
	17,
	10,
	'2017-01-09',
	'2017-01-11',
	4,
	2
);

INSERT INTO products(name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES ( --9
	'Кожа обивочная ГОСТ',
	'Кожа',
	30,
	5,
	10,
	20,
	'2017-02-02',
	'2017-02-11',
	5,
	3
);

INSERT INTO products(name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES ( --10
	'Кожа перфорированная ГОСТ',
	'Кожа',
	30,
	6,
	10,
	20,
	'2017-02-02',
	'2017-02-11',
	5,
	3
);

--компании


INSERT INTO company(company_name) VALUES ( --1
	'Нева_электро'
);

INSERT INTO company(company_name) VALUES ( --2
	'БумОптТорг'
);

INSERT INTO company(company_name) VALUES ( --3
	'СпецПромТкань'
);


--виды продуктов


INSERT INTO product_types(type_name, id_measure_type) VALUES ( --1
	'Микрофон',
	1
);

INSERT INTO product_types(type_name, id_measure_type) VALUES ( --2
	'Кабель',
	1
);

INSERT INTO product_types(type_name, id_measure_type) VALUES ( --3
	'Освещение',
	1
);

INSERT INTO product_types(type_name, id_measure_type) VALUES ( --4
	'Бумага',
	2
);

INSERT INTO product_types(type_name, id_measure_type) VALUES ( --5
	'Ткань',
	3
);


--единицы измерения


INSERT INTO measure_types(measure) VALUES ( --1
	'Шт.'
);

INSERT INTO measure_types(measure) VALUES ( --2
	'Кг'
);

INSERT INTO measure_types(measure) VALUES ( --3
	'м2'
);