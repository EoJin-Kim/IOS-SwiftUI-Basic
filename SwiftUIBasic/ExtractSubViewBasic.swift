//
//  ExtractSubViewBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct ExtractSubViewBasic: View {
    var body: some View {
        ZStack{
            Color.cyan.ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack{
            ItemBasic(title: "사과", count: 1, color: .red)
            ItemBasic(title: "포토", count: 2, color: .blue)
            ItemBasic(title: "바나나", count: 3, color: .yellow	)
        }
    }
}

#Preview {
    ExtractSubViewBasic()
}
