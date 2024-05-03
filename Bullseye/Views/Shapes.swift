//
//  Shapes.swift
//  Bullseye
//
//  Created by Mayur  on 28/04/24.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        Circle()
            .strokeBorder(Color.blue, lineWidth: 20)
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .background(Color.green)
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.blue)
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        Capsule()
            .fill(Color.blue)
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        Ellipse()
            .fill(Color.blue)
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
    }
}

#Preview {
    Shapes()
}
