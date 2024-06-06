//
//  Items.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 4.06.2024.
//

import Foundation
import FirebaseFirestore

struct ExpenseItem: Identifiable, Decodable {
    @DocumentID var id: String?
    let amount: Float
    let note: String
    let category: ExpenseCategories.RawValue
    let uid: String
    
    var user: User?
}

struct IncomeItem: Identifiable, Decodable {
    @DocumentID var id: String?
    let amount: Float
    let note: String
    let category: IncomeCategories.RawValue
    let uid: String
    
    var user: User?
}
