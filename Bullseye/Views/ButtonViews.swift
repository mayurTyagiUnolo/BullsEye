//
//  ButtonViews.swift
//  Bullseye
//
//  Created by Mayur  on 28/04/24.
//

import SwiftUI

struct ButtonView: View {
    var buttonTitle: String
    @Binding var alertIsVisible: Bool
    
    var body: some View {
        Button(buttonTitle.uppercased()) {
            alertIsVisible = true
        }
        .padding(20)
        .background(
            ZStack{
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .foregroundColor(.white)
        .cornerRadius(21)
        .bold()
        .font(.title3)
    }
}

#Preview {
    ButtonView(buttonTitle: "Button", alertIsVisible: .constant(true))
}
