//
//  LoginView.swift
//  Social Diary
//
//  Created by Sean Yu on 7/19/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
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
                    
                    // text fields for email address and password
                    TextField("Email Address", text: $viewModel.email )
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password )
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    //login button
                    ButtonView(title: "Login", background: .blue) {viewModel.login()}
                    
                }
                // create account button
                
                Text("First time here?")
                NavigationLink("Sign Up", destination: SignUpView())
                
               
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
        
}

#Preview {
    LoginView()
}
