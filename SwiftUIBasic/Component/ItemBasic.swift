//
//  ItemBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct ItemBasic: View {
    
    let title: String
    let count: Int
    let color: Color
    

    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }.padding()
            .background(color)
            .cornerRadius(10)
    }
}

#Preview {
    
    
    ItemBasic(title: "사과", count: 1, color: .red)
}
