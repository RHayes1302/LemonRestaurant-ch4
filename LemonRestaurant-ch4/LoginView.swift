//
//  LemonRestaurant_ch4App.swift
//  LemonRestaurant-ch4
//
//  Created by RR HAYES on 10/16/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var userName:String
    @Binding var isLogged:Bool
    
    var body: some View {
        NavigationView{
            VStack{
                Image("littleLemonLogo")//view
                    .resizable()
                    .scaledToFit()
                    .frame(height:100)
                
                TextField("Enter your username:", text:$userName)//view
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Login"){//view
                    if userName == "Sam"{
                        isLogged = true
                    }
                }
            }
        }
    }
}

//#Preview {
//    LoginView()
//}
