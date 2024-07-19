//
//  Social_DiaryApp.swift
//  Social Diary
//
//  Created by Sean Yu on 7/18/24.
//

import SwiftUI
import FirebaseCore

@main
struct Social_DiaryApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
