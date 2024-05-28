//
//  TransactionViewModel.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 8.04.2024.
//

import Foundation
import FirebaseFirestore

final class TransactionViewModel: ObservableObject{
    
    @Published var transacitons: [TransactionItem] = []
    
    
    
    
    func saveTransaction(amount: Float, note: String, date: Date, type: CategoryType, category: Category) {
        
        let firestore = Firestore.firestore()
        
        let firestorePost: [String: Any] = ["id": UUID().uuidString,
                                            "amount": amount,
                                            "note": note,
                                            "date": date,
                                            "type": type,
                                            "category": category]
        
        let firestoreRef: DocumentReference = firestore.collection("transactions").addDocument(data: firestorePost, completion: { (error) in
            if error != nil {
                print("Kayıt sırasında hata oluştu. Hata: \(String(describing: error?.localizedDescription))")
            }
            
        })
    }
    
    
}
