//
//  MainScreenViewModel.swift
//  Social Diary
//
//  Created by Sean Yu on 7/22/24.
//

import Foundation

class MainScreenViewModel: ObservableObject {
    // initiate variable that determines whether this view should be shown to false
    @Published var showingNewCardView = false
    
    // instantiate variable for userId
    private let userId: String
    
    
    
    init(userId: String) {
        
        // get the userId
        self.userId = userId
    }
}
