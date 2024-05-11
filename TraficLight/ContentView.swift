//
//  ContentView.swift
//  TraficLight
//
//  Created by user on 10.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redLightVisible = false
    @State private var orangeLightVisible = false
    @State private var greenLightVisible = false
    
    @State private var currentLight = CurrentLight.red
    @State private var currentText = "Start"
    @State private var nextText = "Next"

    
    
    
    var body: some View {
        VStack {
            SwiftLogoView(color: .red).opacity(redLightVisible ? 1.0 : 0.3)
                .padding(.top, 16)
            VStack {
                SwiftLogoView(color: .orange).opacity(orangeLightVisible ? 1.0 : 0.3)
                    .padding(.all, 24)
            }
            SwiftLogoView(color: .green).opacity(greenLightVisible ? 1.0 : 0.3)
            
        }
        
        Spacer()

        
        Button(action: {startButtonPressed()}) {
            Text("\(currentText)")
                .font(.title2)
                .bold()
                
        }
        .padding(.horizontal, 52)
        .padding(.vertical, 16)
        .background(.blue)
        .foregroundColor(.white)
        .overlay(Capsule().stroke(Color.black, lineWidth: 4))
        .clipShape(Capsule())
        
    }

    
    private func startButtonPressed() {
        
        switch currentLight {
        case .red:
            redLightVisible = true
            orangeLightVisible = false
            greenLightVisible = false
            currentLight = .orange
            currentText = nextText
        case .orange:
            redLightVisible = false
            orangeLightVisible = true
            greenLightVisible = false
            currentLight = .green
        case .green:
            redLightVisible = false
            orangeLightVisible = false
            greenLightVisible = true
            currentLight = .red

        }
    }
}

// MARK: - CurrentLight
extension ContentView {
    private enum CurrentLight {
        case red, orange, green
    }
}

#Preview {
    ContentView()
}
