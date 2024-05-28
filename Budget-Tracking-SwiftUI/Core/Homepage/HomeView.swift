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
    
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
                ScrollView(.vertical, showsIndicators: false) {
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
                    
                    LazyVStack {
                        ListView()
                        ListView()
                        ListView()
                        ListView()
                    }
                }
                
                HStack {
                    
                    NavigationLink {
                        AddView()
                    } label: {
                        ZStack {
                            Circle()
                                .frame(width: 55, height: 55)
                                .foregroundStyle(Color(.black))
                            Image(systemName: "plus")
                                .foregroundStyle(Color(.white))
                                .font(.system(size: 28))
                        }
                    }
                }
                .padding(.all, 25)
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
                NavigationLink {
                    ProfileView(user: authViewModel.currentUser)
                } label: {
                    Image(systemName: "person")
                        .frame(width: 35, height: 35)
                        .foregroundStyle(Color(.white))
                        .background(Color(.gray))
                        .clipShape(Circle())
                }
            }
        }
    }
}


#Preview {
    HomeView()
}
