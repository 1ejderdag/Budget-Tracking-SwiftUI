//
//  ListView.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 4.04.2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                HStack {
                    Divider()
                        .foregroundStyle(Color(.green))
                        .frame(width: 5, height: 40)
                        .background(Color(.black))
                }
                
                Image(systemName: "heart.fill")
                    .font(.system(size: 20))
                    .foregroundStyle(Color(.black))
                    .frame(width: 30, height: 30)
                    .background(Color(.blue))
                    .clipShape(RoundedRectangle(cornerRadius: 7.5))
                    .padding(0)
                
                Text("Category Name")
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundStyle(Color(.black))
                
                Spacer()
                
                Text("1000 ₺")
                    .font(.headline)
                    .fontWeight(.bold)
                    
                Image(systemName: "chevron.forward")
                    .foregroundStyle(Color(.systemGray))
                    .opacity(0.5)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(Color(.systemBackground))
            
            Divider()
        }
    }
}

#Preview {
    ListView()
}
