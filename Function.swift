import UIKit



// Creatiing the Function
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

//call the function
let message = greet(person: "Taylor")
//print(message)

//example 2
func greet2(person: String, formally: Bool) -> String{
    if formally {
        return "Greetings, " + person + "."
    }else{
        return "Hi " + person
    }
}

//print(greet2(person: "Ramone", formally: false))


