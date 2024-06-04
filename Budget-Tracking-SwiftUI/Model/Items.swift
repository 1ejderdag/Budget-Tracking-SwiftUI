//
//  Items.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 4.06.2024.
//

import Foundation
import FirebaseFirestore

struct ExpenseItem {
    @DocumentID var id: String?
    let amount: Float
    let note: String
    let category: ExpenseCategories.RawValue
    let date: Date
    let uid: String
}

struct IncomeItem {
    @DocumentID var id: String?
    let amount: Float
    let note: String
    let category: IncomeCategories.RawValue
    let date: Date
    let uid: String
}
