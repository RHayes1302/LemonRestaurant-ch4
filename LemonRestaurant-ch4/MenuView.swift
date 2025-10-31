//
//  DessertView.swift
//  LemonRestaurant-Ch4
//
//  Created by RAMONE HAYES on 25/10/25.
//

import SwiftUI

struct MenuItem {
    let name: String
    let description: String
    let price: Double
}

struct MenuView: View {
    @State private var showPremium = false
    @State private var showDessert = false
    
    let menuItemsImproved  = [
        MenuItem(name: "Pizza", description: "Cheesy and hot", price: 9.0),
        MenuItem(name: "Steak", description: "Grilled to perfection", price: 15.0),
        MenuItem(name: "Pasta", description: "Spaghetti", price: 6.0),
        MenuItem(name: "Caesar Salad", description:"Romaine lettuce with creamy Caesar dressing", price: 10.99),
        MenuItem(name: "Soup", description: "Warm and comforting", price: 4.75),
        MenuItem(name: "Burger", description: "Grilled beef with cheese", price: 11.00),
        MenuItem(name: "Fish Tacos", description: "Crispy fish with spicy mayo", price: 10.25)
    ]
    
    var filteredMenu: [MenuItem] {
        showPremium ? menuItemsImproved.filter { $0.price >= 10 } : menuItemsImproved
    }
    
    var averagePrice: Double {
        let total = menuItemsImproved.map { $0.price }.reduce(0, +)
        return total / Double(menuItemsImproved.count)
    }
    
    var regularItemCounter: Int {
        menuItemsImproved.filter { $0.price <= 10 }.count
    }
    
    var premiumItemCounter: Int {
        menuItemsImproved.filter { $0.price > 10 }.count
    }
    
    var body: some View {
        VStack {
            // header
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                Text("Today's menu")
                    .font(.title)
                    .bold()
            }
            
            Text("Average Price: $\(averagePrice, specifier: "%.2f")")
                .font(.footnote)
                .foregroundColor(.secondary)
            
            VStack {
                Toggle("Show only premium", isOn: $showPremium)
                    .padding()
                
                if showPremium {
                    Text("You will display premium")
                        .font(.title3)
                        .foregroundColor(.green)
                }
                
                Button("View Desserts") {
                    showDessert.toggle()
                }
                .foregroundColor(.black)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
                .sheet(isPresented: $showDessert) {
                    DessertView()
                }
            }
            
            List {
                ForEach(filteredMenu, id: \.name) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .bold()
                            Text(item.description)
                                .font(.footnote)
                            Text("$\(item.price, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        if item.price > 10 {
                            HStack {
                                Image(systemName: "star.fill")
                                Text("Premium")
                            }
                            .font(.caption)
                            .foregroundColor(.orange)
                            .padding(6)
                            .background(Color.orange.opacity(0.1))
                            .cornerRadius(8)
                        }
                    }
                }
            }
            
            Text("Premium: \(premiumItemCounter) | Regular: \(regularItemCounter) | Avg Price: \(averagePrice, specifier: "%.2f")")
                .font(.subheadline)
                .padding()
                .background(Color.yellow.opacity(0.1))
                .cornerRadius(18)
        }
    }
}

#Preview {
    MenuView()
}
