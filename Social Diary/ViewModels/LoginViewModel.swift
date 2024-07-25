//
//  LoginViewModel.swift
//  Social Diary
//
//  Created by Sean Yu on 7/19/24.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    func login() {
        guard validate() else {
            return
        }
        // attempts to log the user in, if the login fails then the error message "invalid login" is printed
        
        Auth.auth().signIn(withEmail: email, password: password)
        if Auth.auth().currentUser == nil {
            errorMessage="Invalid Login"
        }
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
