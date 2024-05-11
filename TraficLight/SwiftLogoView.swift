//
//  SwiftLogoView.swift
//  TraficLight
//
//  Created by user on 10.05.2024.
//

import SwiftUI


struct SwiftLogoView: View {
    let color: Color

    
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 180, height: 180)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
            /*
            Image(systemName: "swift")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 150, height: 150)
                .offset(x: -10, y: -10)
             */
        }
        
    }
}

#Preview {
    SwiftLogoView(color: .cyan)
}
