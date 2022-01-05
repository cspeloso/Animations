//
//  buttonAnimations.swift
//  Animations
//
//  Created by Chris Peloso on 1/3/22.
//

import Foundation
import SwiftUI

//  button animation example

var animationAmount = 1.0

func example() -> some View{
    VStack{
        
        Button("Tap me"){
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay{
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false)
                    ,value: animationAmount
                )
        }
        .onAppear{
            animationAmount = 2
        }
        
    }
}
