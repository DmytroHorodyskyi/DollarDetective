//
//  LaunchScreenView.swift
//  DollarDetective
//
//  Created by Dmytro Horodyskyi on 12.04.2023.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            Color("DarkMainColor").ignoresSafeArea()
            
            dollar
            magnifyingglass
        }
    }
    
    @ViewBuilder
    private var dollar: some View {  // Mark 3
        
        Image("DollarIcon")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .foregroundColor(Color("GoldColor"))

    }
    @ViewBuilder
    private var magnifyingglass: some View {  // Mark 3
        Image("MagnifyingglassIcon")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .foregroundColor(Color("TextColor"))
            .offset(x: isAnimating ? UIScreen.main.bounds.width / 3 : -UIScreen.main.bounds.width / 3, y: 0)
            .onAppear {
                withAnimation(Animation.linear(duration: 2.0).repeatForever(autoreverses: true)) {
                    self.isAnimating = true
                }
            }
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
            .environmentObject(LaunchScreenStateManager())
    }
}
