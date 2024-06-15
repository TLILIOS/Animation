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
        Button("WaW") {
            animationAmount += 0.3
            print(animationAmount)
        }
        .padding(30)
        .background(.red)
        .clipShape(.circle)
        .foregroundStyle(.white)
        .bold()
        .scaleEffect(animationAmount)
        .animation(.easeIn, value: animationAmount)
        
        
    }
}

#Preview {
    ContentView()
}
