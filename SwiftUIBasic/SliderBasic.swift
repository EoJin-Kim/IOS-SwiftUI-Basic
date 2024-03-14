//
//  SliderBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/14/24.
//

import SwiftUI

struct SliderBasic: View {
    
    @State
    var sliderValue: Double = 3
    @State
    var color: Color = .blue
    var body: some View {
        VStack{
            
            HStack{
                Text("레벨:")
                Text("\(sliderValue)")
                Text(String(format: "%.2f", sliderValue))
            } // Hstack
            .foregroundColor(color)
            
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .red
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("라벨")
                }
                
            ).accentColor(.green)
                .padding()
        } // VStack
    }
}

#Preview {
    SliderBasic()
}
