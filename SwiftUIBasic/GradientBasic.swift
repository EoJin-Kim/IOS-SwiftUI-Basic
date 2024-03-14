//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/9/24.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom
                    )
                ).frame(width: 300, height: 200)
            
            Text("RadialGradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300
                    
                    )
                ).frame(width: 300, height: 200)
            
            Text("AngularGradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.blue, Color.green]),
                        center: .topLeading,
                        angle: .degrees(45)
                    
                    )
                ).frame(width: 300, height: 200)
        }
    }
}

#Preview {
    GradientBasic()
}
