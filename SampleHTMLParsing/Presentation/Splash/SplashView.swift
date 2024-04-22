//   Created on 2024/04/22
//   Using Swift 5.0
//   SplashView.swift
//   Created by Owen


import SwiftUI

struct SplashView: View {
    @State var isLoading: Bool = true
    
    var body: some View {
        
        ZStack {
            Color.white.ignoresSafeArea()
            Text("Launch Screen").font(.largeTitle)
            
            if isLoading {
                launchScreenView()
            }
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                isLoading.toggle()
            })
        }
    }
    
    @ViewBuilder
    private func launchScreenView() -> some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.yellow]),
                           startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            Text("Subway")
                .font(.title)
        }
    }
}

#Preview {
    SplashView()
}
