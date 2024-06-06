//
//  SummaryView.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 1.04.2024.
//

import SwiftUI

struct SummaryView: View {
    
    let amount: Int
    let currency: String
    let type: String
    let icon: String
    let iconBG: Color
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                            Image(systemName: icon)
                                .foregroundStyle(Color(.systemGreen))
                                .frame(width: 30, height: 30)
                                .imageScale(.large)
                                .background(Color.black)
                            Spacer()
                            Text("\(amount)")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.black))
                }
                
                HStack {
                    Text(type)
                        .foregroundColor(.gray)
                        .textCase(.uppercase)
                        .font(.subheadline)
                        .dynamicTypeSize(.small)
                } 
                
                .padding(.top, 5)
            }
            .padding(10)
            .padding(.vertical, 5)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    SummaryView(amount: 1500, currency: "₺", type: "Balance", icon: "plus.circle.fill", iconBG: .blue)
}
