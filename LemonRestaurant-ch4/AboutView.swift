
import SwiftUI

struct AboutView: View {
    // Variables
    let userName = "Ramone"
    @State private var userName2 = "" // modified in realtime
    @State private var orders = 0
    @State private var reservationCount = 0
    var body: some View {
        
        Text("Welcome \(userName) to the Lemon Restaurant")
            .font(.title)
            .padding()
        Image("littleLemonLogo")
            .resizable()
            .scaledToFit()
            .frame(height:80)
        TextField("Enter your name", text:$userName2)
            .textFieldStyle(.roundedBorder)
            .padding()
        
        Text("Hi \(userName2)!")
        Stepper("Orders: \(orders) ",value:$orders, in: 1...5)
        
        Button("Order again"){
            orders += 1
        }
        Text("You have order \(orders) times")
        
        //challenge add another button to reset to 0
        
        Button("Add reservation"){
            reservationCount += 1
        }
        
        Text(String(repeating:"🍽️",count:reservationCount))
        
    }
}

#Preview {
    AboutView()
}
