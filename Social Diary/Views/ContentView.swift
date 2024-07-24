//
//  ContentView.swift
//  Social Diary
//
//  Created by Sean Yu on 7/18/24.
//

import SwiftUI

struct ContentView: View {

    // initiate StateObject variable for the corresponding ViewModel
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        
        // if the user is signed in, show the cardlist and profile tab view
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            
            TabView {
                MainScreenView(userId: viewModel.currentUserId)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                AccountView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
            }
        }
        // if the user is not logged in, show the LoginView
        else {
            LoginView()
        }
        
    }
}

#Preview {
    ContentView()
}
