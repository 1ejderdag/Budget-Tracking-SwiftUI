//
//  Category.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 8.04.2024.
//

import Foundation

struct Category: Identifiable, Codable {
    
    let id: String
    let name: String
    let icon: String
    let color: String
    var type = CategoryType.expense.rawValue

}
