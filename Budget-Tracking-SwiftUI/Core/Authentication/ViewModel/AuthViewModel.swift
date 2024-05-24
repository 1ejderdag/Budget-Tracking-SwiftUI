//
//  AuthViewModel.swift
//  Budget-Tracking-SwiftUI
//
//  Created by Ejder Dağ on 21.05.2024.
//

import Firebase
import SwiftUI
import FirebaseAuth

class AuthViewModel: ObservableObject {
    
    @Published var userSession = Auth.auth().currentUser
    @Published var didAuthenticateUser = false
    @Published var currentUser: User?
    //private var tempUserSession: FirebaseAuth.User?
    let userService = UserService()
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        self.fetchUser()
        
        print("DEBUG: User session is \(String(describing: self.userSession?.uid))")
    }
    
    func login(withEmail email: String, password: String) {
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign in. Error: \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            self.didAuthenticateUser = true
            print("DEBUG: Sign user in successfuly")
            
        }
    }
    
    func register(withEmail email: String, fullanme: String, password: String) {
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register. Error: \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            self.didAuthenticateUser = true
            print("DEBUG: Register user successfuly")
            
            let data = ["email": email,
                        "fullname": fullanme]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { error in
                    if let error = error {
                        print("DEBUG: Failed to upload user data. Error:\(error.localizedDescription)")
                        return
                    }
                    print("DEBUG: User data uploaded")
                    self.didAuthenticateUser = true
                }
        }
    }
    
    func signOut() {
        
        // Arayüzü login view olur
        self.userSession = nil
        didAuthenticateUser = false
        
        // server'da kullanıcı çıkış yapar
        try? Auth.auth().signOut()
    }
    
    func fetchUser() {
        guard let uid = self.userSession?.uid else { return }
        
        userService.fetchUser(withUid: uid)
    }
}
