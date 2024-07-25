//
//  SignUpViewModel.swift
//  Social Diary
//
//  Created by Sean Yu on 7/22/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class SignUpViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    func signUp() {
        
        // first check if the information is valid, if not then return
        
        guard validate() else {
            return
        }
        
        // create user using FirebaseAuth and add to the firebase using the insertUserRecord function
        
        Auth.auth().createUser(withEmail: email, password: password) {[weak self] result,error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
    }
    
    // this function adds the new user to the firestore database and returns nothing
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validateEmail() -> Bool {
        // Define your regular expression pattern
            let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

            // Create a regular expression object
            guard let regex = try? NSRegularExpression(pattern: emailRegex) else {
                return false
            }

            // Create a range for the entire string
            let range = NSRange(location: 0, length: email.count)

            // Test if the email address matches the regex pattern
            return regex.firstMatch(in: email, options: [], range: range) != nil
        }
    
    
    private func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage="Please fill in all fields."
            return false
        }
        
        guard validateEmail() else {
            errorMessage="Please enter a valid email address"
            return false
        }
        guard password.count >= 8 else {
            errorMessage="Password must be 8 or more characters."
            return false
        }
        
        return true
    }
    
}
