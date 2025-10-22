//
//  ReservationSummaryView.swift
//  LemonRestaurant-ch4
//
//  Created by Ramone Hayes on 10/21/25.
//

import SwiftUI

import SwiftUI

struct ReservationSummaryView: View {
    
    @Binding var name:String
    @Binding var guests:Int
    @Binding var allergiesNotes:String
    @Binding var reservationDate:Date
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Reservation Summary").font(.title)
            
            //adding information
            Text("Name: \(name)")
            Text("Guests: \(guests)")
            Text("Allegies: \(allergiesNotes)")
            Text("Date: \(formattedDate(date:reservationDate))")
            
        }
    }
    
    func formattedDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

//#Preview {
//    ReservationSummaryView()
//}

