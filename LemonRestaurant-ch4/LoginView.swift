//
//  LoginView.swift
//  LemonRestaurant-ch4
//
//  Created by Ramone Hayes on 10/19/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var userName:String
    @Binding var isLogged:Bool
    
    var body: some View {
        NavigationView{
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:100)
                
                TextField("Enter your username:",text:$userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button ("Login"){
                    if userName == "Ramone"{
                        isLogged = true
                    }
                }
            }
        }
    }
 }
                
//#Preview {
//    LoginView()
//}                }
