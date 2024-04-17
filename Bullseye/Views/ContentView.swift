//
//  ContentView.swift
//  Bullseye
//
//  Created by Mayur  on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    
    var body: some View {
        VStack{
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.callout)
                .kerning(2)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack{
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
                    .bold()
            }
            Button("Hit me") {
                alertIsVisible = true
            }
            .alert(
                   "Hello There!",
                   isPresented: $alertIsVisible,
                   actions: {
                       Button("Awesome") {
                           print("Alert closed")
//                           alertIsVisible = false
                       }
                   },
                   message: {
                       let roundedValue = Int(sliderValue.rounded())
                       Text("""
                            The slider's value is \(roundedValue)
                        Your score is \(game.points(sliderValue: roundedValue))
                        """)
                   }
            )
        }
    }
}


#Preview {
    ContentView()
}
