//
//  User.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 22.05.2024.
//

import FirebaseFirestoreSwift
import FirebaseFirestore
import Firebase

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let email: String
    let fullName: String
    
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == id}
}
