//
//  UserService.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 22.05.2024.
//

import Firebase
import FirebaseFirestoreSwift

class UserService {
    
    func fetchUser(withUid uid: String) {
        
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let snapshot = snapshot else { return }
                
                guard let user = try? snapshot.data(as: User.self) else { return }
                
                print("User name is \(user.fullname)")
                print("User name is \(user.email)")
                //completion(user)
            }
    }
}
