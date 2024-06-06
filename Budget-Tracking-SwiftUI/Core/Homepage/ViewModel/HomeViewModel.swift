//
//  HomeViewModel.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 4.06.2024.
//

import Foundation
import Firebase

final class HomeViewModel: ObservableObject {
    
    @Published var expenses = [ExpenseItem]()
    @Published var incomes = [IncomeItem]()
    
    let service = TransactionService()
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func fetchExpense() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        service.fetchExpense(forUid: uid) { expenses in
            self.expenses = expenses
            for i in 0 ..< expenses.count {
                self.expenses[i].user = self.user
            }
        }
    }
    
}
