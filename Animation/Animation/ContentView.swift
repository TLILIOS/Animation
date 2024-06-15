//
//  ContentView.swift
//  Animation
//
//  Created by HTLILI on 14/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        VStack {
            Stepper("Scale Amount", value: $animationAmount.animation(), in: 0...10)
            Spacer()
            Button("WaW") {
                            animationAmount += 0.3
            }
            .padding(70)
            .background(.red)
            .clipShape(.circle)
            .foregroundStyle(.white)
            .bold()
//            .overlay(
//                Circle()
//                    .stroke(.red)
                    .scaleEffect(animationAmount)
//                    .opacity(2 - animationAmount)
//                    .animation(
//                        .easeOut(duration: 1)
//                        .repeatForever(autoreverses: false),
//                        value: animationAmount)
//            )
            
            //        .scaleEffect(animationAmount)
            //        .blur(radius: (animationAmount - 1)*3)
            //        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
//            .onAppear {
//                animationAmount = 2
//            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
