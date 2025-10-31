//
//  DessertView.swift
//  LemonRestaurant-Ch4
//
//  Created by Ramone Hayes on 25/10/25.
//

import SwiftUI

struct DessertView: View {
    // create a dessert dictionary 5
    let dessertItems = [
        "Chocolate":9.00,
        "Vainalla":8.50,
        "Cookies":8.80
    ]
    var body: some View {
        Text("This is testing")
        List{
            ForEach(dessertItems.sorted(by: { $0.key < $1.key }), id: \.key){
                (name,price) in
                //create the view
                VStack{
                    Text(name)
                }
            }
        }
    }
}

#Preview {
    DessertView()
}
