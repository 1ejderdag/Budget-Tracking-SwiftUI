//
//  Categories.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 31.05.2024.
//

import Foundation

enum ExpenseCategories: String, CaseIterable {
    case home
    case food
    case groceries
    case health
    case tranpsort
    case leisure
    case education
    case others
    
    var title: String {
        switch self {
            
        case .home: return "Home"
        case .food: return "Food"
        case .groceries: return "Groceries"
        case .health: return "Health"
        case .tranpsort: return "Transport"
        case .leisure: return "Leisure"
        case .education: return "Education"
        case .others: return "Others"
        }
    }
    
    var iconName: String {
        switch self {
            
        case .home: return "house.fill"
        case .food: return "fork.knife"
        case .groceries: return "list.bullet.clipboard"
        case .health: return "cross.case"
        case .tranpsort: return "car"
        case .leisure: return "party.popper"
        case .education: return "graduationcap"
        case .others: return "questionmark"
        }
    }
}

enum IncomeCategories: String, CaseIterable {
    case salary
    case invest
    case rental
    case gift
    case debt
    case others
    
    var title: String {
        switch self {
            
        case .salary: return "Salary"
        case .invest: return "İnvest"
        case .rental: return "Rental"
        case .gift: return "Gift"
        case .debt: return "Debt"
        case .others: return "Others"
        }
    }
    
    var iconName: String {
        switch self {
            
        case .salary: return "banknote"
        case .invest: return "dollarsign.arrow.circlepath"
        case .rental: return "person.badge.key"
        case .gift: return "giftcard"
        case .debt: return "creditcard"
        case .others: return "questionmark"
        }
    }
}




