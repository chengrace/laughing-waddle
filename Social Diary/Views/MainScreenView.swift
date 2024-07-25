//
//  MainScreenView.swift
//  Social Diary
//
//  Created by Sean Yu on 7/22/24.
//
import FirebaseFirestoreSwift
import SwiftUI

struct MainScreenView: View {
    @StateObject var viewModel: MainScreenViewModel
    
    // instantiate variable to store all user credit cards
    @FirestoreQuery var items: [String]
    
    
    init(userId: String) {
        // initiate items to all user credit cards, pulled from the firestore database
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/accounts"
        )
        // initiate viewModel to the corresponding ViewModel for the user
        self._viewModel = StateObject(
            wrappedValue: MainScreenViewModel(userId: userId))
    }
    
    var body: some View {
        VStack{
            
        }
    }
}

#Preview {
    MainScreenView(userId: "GraceChen")
}
