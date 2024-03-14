//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct BindingBasic: View {
    @State
    var backgroundColor: Color = Color.green
    @State
    var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
            VStack{
                Text(title)
                
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
