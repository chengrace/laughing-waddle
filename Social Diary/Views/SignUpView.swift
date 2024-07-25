//
//  SignUpView.swift
//  Social Diary
//
//  Created by Sean Yu on 7/22/24.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel = SignUpViewModel()
    var body: some View {
        NavigationView {
            VStack {
                // header
                HeaderView(title: "Laughing Waddle", subtitle: "Share your thoughts", background: Color.mint)
                                
                // login form
                Form {
                    // displays error message if one exists
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Name", text: $viewModel.name)
                        .textFieldStyle(DefaultTextFieldStyle())

                    // text fields for email address and password
                    TextField("Email Address", text: $viewModel.email )
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password )
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    //login button
                    ButtonView(title: "Create Account", background: .blue) {viewModel.signUp()}
                    
                    
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
        
}

#Preview {
    SignUpView()
}
