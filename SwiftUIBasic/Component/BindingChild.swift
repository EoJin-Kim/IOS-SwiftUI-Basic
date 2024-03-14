//
//  BindingChild.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct BindingChild: View {
    
    @State 
    var buttonColor: Color = Color.blue
    @Binding
    var backgroundColor: Color
    @Binding
    var title: String
    
    
    var body: some View {
        Button(
            action: {
                backgroundColor = Color.orange
                buttonColor = .pink
                title = "Binding Child View"
            },
            label: {
                Text("Child View 이동")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(buttonColor)
                    .cornerRadius(10)
            }
        )
    }
}

#Preview {
    BindingChild(backgroundColor: .constant(.orange), title: .constant("타이틀"))
        .previewLayout(.sizeThatFits)
}
