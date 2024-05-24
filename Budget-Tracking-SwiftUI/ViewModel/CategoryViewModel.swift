//
//  CategoryViewModel.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 9.04.2024.
//

import Foundation
import FirebaseFirestore

class CategoryViewModel {
    
    @Published var categories: [Category] = [] //published keyword, değişkenin içeriği değiştiği zaman kullanıldığı yerlerde de değişir.

    
    func createDefaultCategoris() async {
        
        let db = Firestore.firestore()
        
        for category in DefaultCategories().defaultExpenseCategories {
            
            let postData = ["id": UUID().uuidString,
                            "name": category.name,
                            "icon": category.icon,
                            "color": category.color,
                            "type": category.type
            ] as [String : Any]

            do {
                try await db.collection("categories").addDocument(data: postData)
            } catch {
                print("Error adding document: \(error)")
            }
            
        }
        
        
    }
}
