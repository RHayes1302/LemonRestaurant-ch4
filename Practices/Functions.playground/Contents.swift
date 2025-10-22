import UIKit



// Creatiing the Function
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

//call the function
let message = greet(person: "Taylor")
print(message)

//example 2
func greet2(person: String, formally: Bool) -> String{
    if formally {
        return "Greetings, " + person + "."
    }else{
        return "Hi " + person
    }
}

print(greet2(person: "Ramone", formally: false))

// example 3

func calculateTotal(price: Double, qty: Int) -> Double {
    return price * Double(qty)
}

let total = calculateTotal(price: 9.99, qty:2)
print(total)



func deliverytime(minutes:Int) -> String{
    return "Ready for delivery in\(minutes) minutes"
}


