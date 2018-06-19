var express = require("express");
var app = express();
const sqlite3 = require('sqlite3').verbose();
var bodyParser = require("body-parser");
var urlencodedParser = bodyParser.urlencoded({extended: false});
var port=3000;

app.engine('ejs', require('ejs-locals'));
app.set('views', __dirname + '/pages');
app.set('view engine', 'ejs');
app.use(express.static('public'));

var db = new sqlite3.Database('./data.db');
 
//for index.ejs
app.get("/", (request, response) => {
	  response.render("index");
});

//for products.ejs
app.get("/get_products", (request, response) => {

	var get_rows_product="SELECT * FROM products";

	db.all(get_rows_product, (error, rows) => {

	  if (error) console.log(error.message);
	  response.render("Products", {rows: rows});

	});


});

//for companies.ejs
app.get("/get_companies", (request, response) => {

	var get_rows_company="SELECT * FROM company";

	
	db.all(get_rows_company, (error, rows) => {

	  if (error) console.log(error.message);
	  response.render("Companies", {rows: rows});

	});

});

// for add.ejs
app.get("/data", (request, response) => {

	  response.render("Add");

});


app.post("/add_data", urlencodedParser, (request, response) => {


	var add_data='INSERT INTO products(id,name_full,name_short,section_number,shelf_number,weight,sizes,date_in,date_out,id_product_types,id_company) VALUES (?, ?, ?, ?, ?, ?,?,?,?,?,?)'

	if(!request.body) return response.sendStatus(400);

	let data = [

		request.body.id, 
		request.body.name, 
		request.body.second_name, 
		request.body.last_name, 
		request.body.sex,
		request.body.birthdate,
		request.body.adress,
		request.body.job,
		request.body.education,
		request.body.telephone_number,
		request.body.marital_status,
		request.body.children

	];

	db.run(add_data, data, (error) => {
		if (error) console.log(error.message);
	});
	
});

// for search.ejs 
app.get("/search", (request, response) => {

	
	var get_search="SELECT * FROM products";
	db.all(get_search, (error, rows) => {
	  if (error) console.log(error.message);
	  response.render("search", {rows: rows});
	});

});

app.post("/get_search", urlencodedParser, (request, response) => {

	var search_by_name='SELECT * FROM products WHERE name_full=?'
	if(!request.body) return response.sendStatus(400);

	let data = [
	request.body.name, 

	];

	db.all(search_by_name,data, (err, rows) => {
	  if (err) console.log(err.message);
	  response.render("search", {rows: rows});
	});
});


// for delete.ejs
app.get("/delete", (request, response) => {

	
	var get_delete="SELECT * FROM products";

	db.all(get_delete, (error, rows) => {
	  if (error) console.log(error.message);
	  response.render("delete", {rows: rows});
	});

});

app.post("/delete_product", urlencodedParser, (request, response) => {

	var search_by_name='DELETE FROM products WHERE name_full=?'
	if(!request.body) return response.sendStatus(400);

	let data = [
	request.body.name, 

	];

	db.all(search_by_name,data, (err, rows) => {
	  if (err) console.log(err.message);
	  response.render("delete", {rows: rows});
	});
});

//for interval.ejs
app.get("/interval", (request, response) => {

	
	var interval="SELECT * FROM products";

	db.all(interval, (error, rows) => {
	  if (error) console.log(error.message);
	  response.render("interval", {rows: rows});
	});

});

app.post("/get_interval", urlencodedParser, (request, response) => {

	var search_by_date='SELECT * FROM products WHERE date_in>=? AND date_out<=?'
	if(!request.body) return response.sendStatus(400);

	let data = [
	request.body.start,
	request.body.end

	];

	db.all(search_by_date,data, (err, rows) => {
	  if (err) console.log(err.message);
	  response.render("interval", {rows: rows});
	});
});

//for report.ejs
app.get("/report", (request, response) => {

	
	var get="SELECT name_full, company_name,type_name,measure FROM products LEFT JOIN company ON id_company= company.id LEFT JOIN product_types ON id_product_types=product_types.id LEFT JOIN measure_types ON id_measure_type=measure_types.id";

	db.all(get, (error, rows) => {
	  if (error) console.log(error.message);
	  response.render("report", {rows: rows});
	});

});

app.listen(port);

console.log("Server has started.");