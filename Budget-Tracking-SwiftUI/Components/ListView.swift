//
//  ListView.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 4.04.2024.
//

import SwiftUI

struct ListView: View {
    let expense: ExpenseItem
    
    var category: ExpenseCategories {
        switch expense.category {
        case "home": return .home
        case "food": return .food
        case "groceries": return .groceries
        case "health": return .health
        case "transport": return .tranpsort
        case "leisure": return .leisure
        case "education": return .education
        case "others": return .others
        default:
            return .others
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                HStack {
                    Divider()
                        .foregroundStyle(Color(.green))
                        .frame(width: 5, height: 40)
                        .background(Color(.black))
                }
                
                Image(systemName: category.iconName)
                    .font(.system(size: 20))
                    .foregroundStyle(Color(.black))
                    .frame(width: 30, height: 30)
                    .background(Color(generateRandomColor()))
                    .clipShape(RoundedRectangle(cornerRadius: 7.5))
                    .padding(0)
                
                Text(category.title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color(.black))
                
                Spacer()
                
                Text("₺" + String(expense.amount))
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
    
    func generateRandomColor() -> Color {
            let red = Double.random(in: 0...1)
            let green = Double.random(in: 0...1)
            let blue = Double.random(in: 0...1)
            return Color(red: red, green: green, blue: blue)
        }
}

//#Preview {
//    ListView()
//}
