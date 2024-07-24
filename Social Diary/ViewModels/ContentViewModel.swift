//
//  ContentViewModel.swift
//  Social Diary
//
//  Created by Sean Yu on 7/22/24.
//

import Foundation
import FirebaseAuth

class ContentViewModel: ObservableObject {
    
    // instantiate and initiate variable for currentUserId to an empty string
    @Published var currentUserId: String = ""
    
    // instantiate handler to track when user logs in
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        // attempt to assign currentUserId and move to main thread
        self.handler = Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    // function that returns if the user is signed in
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
 
