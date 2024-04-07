//
//  CategoryType.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 5.04.2024.
//

import Foundation

enum CategoryType: String, CaseIterable {
    case expense = "Expense"
    case income = "Income"
    
    func localizedName() -> String {
        return NSLocalizedString(self.rawValue, comment: "")
    }
}
