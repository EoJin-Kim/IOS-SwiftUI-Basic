//
//  DarkModeBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/14/24.
//

import SwiftUI

struct DarkModeBasic: View {
    
    @Environment(\.colorScheme)
    var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("Primary 색상")
                        .foregroundColor(.primary)
                    Text("Secondary 색상")
                        .foregroundColor(.secondary)
                    Text("Red Color")
                        .foregroundColor(.red)
                    
                    Text("Adaptive Color")
                        .foregroundColor(.adaptive)
                    
                    Text("@Environment 사용해서 Adpative 색 설정")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                    
                }
            } // scollview
        } // navigation
    }
}

#Preview {
    DarkModeBasic()
}
