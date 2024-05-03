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
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                InstrutionsView(game: $game)
                SliderView(sliderValue: $sliderValue)
                HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
            }
        }
        
    }
}

struct InstrutionsView: View {
    @Binding var game: Game
    
    var body: some View {
        InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can".uppercased())
            .padding(.horizontal, 30)
        BigNumberText(text: String(game.target))
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack{
            SliderLabelText(text: "1")
            Slider(value: $sliderValue, in: 1...100)
            SliderLabelText(text: "100")
        }
        .padding()
    }
}

struct HitMeButtonView: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        ButtonView(buttonTitle: "Hit me", alertIsVisible: $alertIsVisible)
            .overlay(
                RoundedRectangle(cornerRadius: 21)
                    .strokeBorder(Color.white, lineWidth: 2.0)
                
            )
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


#Preview {
    ContentView()
}
#Preview {
    ContentView()
        .previewDevice("iPhone 14 Pro Max")
        .previewInterfaceOrientation(.landscapeRight)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
