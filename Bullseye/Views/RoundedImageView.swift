//
//  w.swift
//  Bullseye
//
//  Created by Mayur  on 30/04/24.
//

import SwiftUI

struct RoundedImageViewStocked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56, height: 56)
//            .background(Color.red)
    }
}


struct previewView: View {
    var body: some View {
        VStack(spacing: 15){
            RoundedImageViewStocked(systemName: "arrow.counterclockwise")
            RoundedImageViewStocked(systemName: "list.dash")
        }
    }
}

#Preview {
    previewView()
}
#Preview {
    previewView()
        .preferredColorScheme(.dark)
}
