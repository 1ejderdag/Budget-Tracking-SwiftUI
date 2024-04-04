//
//  HomeView.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 30.03.2024.
//

import SwiftUI

struct HomeView: View {
    
    private let adaptive =
    [
        GridItem(.adaptive(minimum: 150), spacing: 15)
    ]
    
    @State var selectionPicker: String = "Expense"
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    LazyVGrid(columns: adaptive, spacing: 15) {
                        SummaryView(amount: 1500, currency: "₺", type: "Balance", icon: "equal.circle.fill", iconBG: .blue)
                        SummaryView(amount: 1500, currency: "₺", type: "Average", icon: "plusminus.circle.fill", iconBG: .blue)
                        SummaryView(amount: 1500, currency: "₺", type: "Income", icon: "plus.circle.fill", iconBG: .blue)
                        SummaryView(amount: 1500, currency: "₺", type: "Expense", icon: "minus.circle.fill", iconBG: .blue)
                    }
                    .padding()
                    
                    Picker(selection: $selectionPicker, content: {
                        Text("Expense").tag("Expense")
                        Text("Income").tag("Income")
                    }, label: {
                        Text("Picker")
                    })
                    .pickerStyle(SegmentedPickerStyle())
                    
                    
                    VStack {
                        ListView()
                        ListView()
                        ListView()
                        ListView()
                        ListView()
                        ListView()
                        ListView()
                        ListView()
                        ListView()
                        
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Text("My Wallet")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(Color(.black))
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Text("Settings")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.blue))
                    }
                }
            }
            
        }
       
        
        
            
           
    }
}


#Preview {
    HomeView()
}
