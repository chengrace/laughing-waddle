//
//  AccountView.swift
//  Social Diary
//
//  Created by Sean Yu on 7/22/24.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = ProfileViewModel()
    var body: some View {
        VStack {
            ButtonView(title: "Logout", background: .blue, action: viewModel.logOut)
        }
    }
}

#Preview {
    AccountView()
}
