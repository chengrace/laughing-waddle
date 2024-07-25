//
//  HeaderView.swift
//  Social Diary
//
//  Created by Sean Yu on 7/22/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
            VStack {
                Text(title)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text(subtitle)
                    .foregroundColor(.white)
                    .font(.system(size: 20))


            }
            .padding(.top,30)
            
        }
        .frame(width:UIScreen.main.bounds.width * 3, height: 250)
    }
}

#Preview {
    HeaderView(title: "Card Optimizer", subtitle: "Maximize your points", background: .blue)
}
