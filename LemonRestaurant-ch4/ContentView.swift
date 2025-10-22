//
//  ContentView.swift
//  LemonRestaurant-ch4
//
//  Created by RR HAYES on 10/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationLink(destination:AboutView()){
            VStack {
                Image(systemName: "sun.min")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                Text("Hello, world!")
                NavigationLink(destination:AboutView()){
                    Text ("About")
                }
                
            }
                .padding()
            }
    }
        
}
        
        #Preview {
   ContentView()
}

