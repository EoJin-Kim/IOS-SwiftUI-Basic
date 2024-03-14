//
//  ColorPicker.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/14/24.
//

import SwiftUI

struct ColorPickerBasic: View {
    
    @State
    var backgroundColor: Color = .green
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker(s)
                
        }
    }
}

#Preview {
    ColorPickerBasic()
}
