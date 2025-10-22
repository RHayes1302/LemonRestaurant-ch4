import UIKit

// IF - - ELSE

/*
 -----SYNTAX-----
 if condition1 {
    this block of code runs if condition1nis true
 }else if condition2 {
    this block runs if condition1 is false and condition 2 is true
 }eelse{
 this block runs if none of the above conditions are true
 }
 */
 
-----Example 1----

var waterTemp = 30

if waterTemp >=100 {
    print("The water is boiling")
}else {
    print("The water is not boiling")
}

// ----ExaMPLE 2 ----
var position = 2

if position ==1 {
    print ("You came first")
}else if position ==2 {
    print ("You came second")
}else if position ==3 {
    print ("You came third")
}else {
    print ('You finished in position)/(position)")
}

//---- Example 3 ---- AND T && T

var temp = 74

if temp >= 68 && temp <= 75{
    print("The tempature is just right")
}else{
    print("The tempature is too hot or cold")
}


// --- Example 4 ---- OR ||
var mainPower:Bool = false
var batteryPower:Bool = true

if mainPower == true || batteryPower == true {
    print("I can use the laptop")
}else {
    print("You should find a charger")
}

*/
|----- Minichallenge -----
Show one message if user is VIP, and anoter if not.
*/
                        
var is VIP:Bool = false

                        if isVIP == true {
    print("Welcome VIP")
}else{
    print("Welcome")
