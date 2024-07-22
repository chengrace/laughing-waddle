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
            ZStack {
                // blue rectangle at top
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.blue)
                
                // Title of app
                VStack {
                    Text("Laughing Waddle")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .bold()
                }
                .padding(.top,50)
            }
            .frame(width:UIScreen.main.bounds.width * 3, height: 250)
            .offset(y:-330)
        }
    }
}

#Preview {
    LoginView()
}
