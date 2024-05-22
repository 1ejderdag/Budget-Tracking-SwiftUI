//
//  RowViewModel.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 22.05.2024.
//

import Foundation

enum RowViewModel: Int, CaseIterable {
    case logout
    case add
    
    var title: String {
        switch self {
        case .logout: return "Sign Out"
        case .add: return "Add Transaction"
        }
    }
    
    var iconName: String {
        switch self {
        case .logout: return "arrow.left.square"
        case .add: return "plus"
        }
    }
    
}
