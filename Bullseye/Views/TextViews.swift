//
//  TextViews.swift
//  Bullseye
//
//  Created by Mayur  on 28/04/24.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.callout)
            .kerning(2)
    }
}

struct BigNumberText: View{
    var text: String
    
    var body: some View{
        Text(String(text))
            .foregroundStyle(Color("TextColor"))
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct SliderLabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundStyle(Color("TextColor"))
    }
}

#Preview {
    VStack{
        InstructionText(text: "Instructions")
        BigNumberText(text: "50")
        SliderLabelText(text: "66")
    }
}
