///
//  AboutView.swift
//  LemonRestaurant-ch4
//
//  Created by Ramone Hayes on 10/19/25.
//

import SwiftUI

struct AboutView: View {
    // variables
    @State private var userName = ""
    @State private var orders = 0
    @State private var reservationCount = 0
    var body: some View {
        
        Text("welcome\(userName) to the Lemon Restaurant")
            .font(.largeTitle)
            .padding()
        Image("littleLemonLogo")
            .resizable()
            .scaledToFit()
            .frame(height: 80)
        TextField ("Enter your name", text: $userName)
            .textFieldStyle(.roundedBorder)
            .padding()
        Text ("Hi \(userName)!")
        Stepper ("Orders: \(orders) ",value:$orders,
                 in: 1...5)
        
        Button("Order again"){
            orders += 1
        }
        Text("You have ordered \(orders) times")
        
        //challenge add another button to reset to 0
        Button("resetorders"){
            orders = 0
        }
        Button ("Addreservation"){
            reservationCount += 1
        }
    }
}
#Preview {
    AboutView()
}
