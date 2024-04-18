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
                Text("🎯🎯🎯\nPut the bullseye as close as you can".uppercased())
                    .foregroundColor(Color("TextColor"))
                    .bold()
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.callout)
                    .kerning(2)
                    .padding(.horizontal, 30)
                Text(String(game.target))
                    .foregroundStyle(Color("TextColor"))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
                HStack{
                    Text("1")
                        .bold()
                        .foregroundStyle(Color("TextColor"))
                    Slider(value: $sliderValue, in: 1...100)
                    Text("100")
                        .foregroundStyle(Color("TextColor"))
                        .bold()
                }
                .padding()
                Button("Hit me".uppercased()) {
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
