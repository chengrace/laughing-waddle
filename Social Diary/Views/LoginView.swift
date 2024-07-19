//
//  LoginView.swift
//  Social Diary
//
//  Created by Sean Yu on 7/19/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            // Header
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                VStack {
                    Text("Social Diary")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 40))
                        .offset(y:30)
                }
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y:-80)
            // Login form
            
            // create account
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
