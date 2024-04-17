//
//  Gam.swift
//  Bullseye
//
//  Created by Mayur  on 10/04/24.
//

import Foundation

struct Game{
    var target = Int.random(in: 0...100)
    var round = 1
    var score = 0
    
    func points(sliderValue: Int) -> Int{
        100 - abs(sliderValue - target)
    }
}
