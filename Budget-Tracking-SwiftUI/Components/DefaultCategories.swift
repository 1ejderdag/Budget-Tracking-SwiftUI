//
//  DefaultCategories.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 9.04.2024.
//

import Foundation

struct DefaultCategories{
    
    let defaultExpenseCategories = [
            
            Category(id: UUID().uuidString, name: "Home", icon: "house", color: "red", type: "Expense"),
            Category(id: UUID().uuidString, name: "Food", icon: "fork.knife", color: "red", type: "Expense"),
            Category(id: UUID().uuidString, name: "Groceries", icon: "list.bullet.clipboard", color: "red", type: "Expense"),
            Category(id: UUID().uuidString, name: "Health", icon: "cross.case", color: "red", type: "Expense"),
            Category(id: UUID().uuidString, name: "Debt", icon: "creditcard", color: "red", type: "Expense"),
            Category(id: UUID().uuidString, name: "Leisure", icon: "party.popper", color: "red", type: "Expense"),
            Category(id: UUID().uuidString, name: "Education", icon: "graduationcap", color: "red", type: "Expense"),
            Category(id: UUID().uuidString, name: "Others", icon: "questionmark", color: "red", type: "Expense")
        ]
    
    let defaultIncomeCategories = [
        Category(id: UUID().uuidString, name: "Salary", icon: "banknote", color: "red", type: "Expense"),
        Category(id: UUID().uuidString, name: "Invest", icon: "dollarsign.arrow.circlepath", color: "red", type: "Expense"),
        Category(id: UUID().uuidString, name: "Rental", icon: "person.badge.key", color: "red", type: "Expense"),
        Category(id: UUID().uuidString, name: "Gift", icon: "giftcard", color: "red", type: "Expense"),
        Category(id: UUID().uuidString, name: "Debt", icon: "creditcard", color: "red", type: "Expense"),
        Category(id: UUID().uuidString, name: "Others", icon: "questionmark", color: "red", type: "Expense")
    ]
}



