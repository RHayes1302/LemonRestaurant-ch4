import UIKit

//ARRAYS

// Create an array of strings

let dishes = ["Pizza","Pasta","Gnocchi"]

// to access use index
print(dishes[0])
print(dishes[1])


// Example 2

var orders = [String]() //Creating an array
orders.append("soup") //add item
orders.append("Burger") //add item
orders.append("Pasta") //add item
print(orders.count)


// DICTIONARIES KEY:VALUE pairs

// Define a dictionary with prices
let menuPrices: [String:Double] = ["Pizza":10.99,"Pasta":7.99,"Gnocchi":4.99]

// access value using key

print(menuPrices["Pizza"]!) //Optional (10.90)


let drinks: [String:Double] = ["7up":1.99,"Pepsi":1.99,"Sprite":1.99]

//access value using key

print(drinks)


