//
//  ButtonView.swift
//  Social Diary
//
//  Created by Sean Yu on 7/22/24.
//

import SwiftUI

struct ButtonView: View {
    
    // takes in parameters for title, background color, and the action after the button is clicked
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
    }
}
