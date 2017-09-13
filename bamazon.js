var inquirer = require('inquirer');
var mysql = require("mysql");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root", 
    password: "FST123haha", 
    database: "bamazon"
});

connection.connect(function(err) {
    if (err) throw err;
    runSearch();
});

// Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.

var runSearch = function(){
	connection.query("SELECT * FROM products", function(err, res){
	if(err) throw err;
	console.log("\nItem ID: Product Name : Department Name : $Price : StockQuantity");	

	//for each loop
	 for (i in res){
	 	console.log(res[i].itemID + ": " + res[i].productName + " : " + res[i].departmentName + " : " + res[i].price + " : " +res[i].stockNumber);
	 }

	//The first should ask them the ID of the product they would like to buy.
	selectItem();

	});
};

//have user select
var selectItem = function(){
		inquirer.prompt({
			name:"select",
			type:"input",
			message:"what item do you want to buy?"

		}).then(function (answers) {
	    if (answers.select > 0){
	    buyItem(answers.select);
		}
		else {
			runSearch();
		}

	});
}
//The second message should ask how many units of the product they would like to buy.
var buyItem = function(item){
	inquirer.prompt({
			name:"select",
			type:"input",
			message:"how many would you like?"
		}).then(function (answers) {
		connection.query("SELECT * FROM products WHERE ?", { itemID: item}, function(err, res) {
		// always for a query
		if(err) throw err;
		//make sure it's a number
		var isEnough = parseInt(res[0].stockNumber) - parseInt(answers.select);
		if (isEnough >=0){
			connection.query("UPDATE products SET ? WHERE ?", [{ stockNumber: isEnough},
			{itemID:item}],function(err, res) {
				connection.end(function(err){
					console.log("good to goOOOOOoo!")
				});

			});	 

		}

		else {console.log ("sorry, we don't have enough of " + res[0].productName);
		}
	});
});
}