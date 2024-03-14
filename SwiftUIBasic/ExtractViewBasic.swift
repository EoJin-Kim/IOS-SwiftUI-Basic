//
//  ExtractViewBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct ExtractViewBasic: View {
    
    @State var backgoundColor: Color = Color.pink
    
    var body: some View {
        ZStack{
            backgoundColor.ignoresSafeArea()
            
            contentLayer
        }
    }
    var contentLayer: some View {
        VStack{
            Text("Extract View 연순")
                .font(.largeTitle)
            
            Button(
                action: {
                    buttonPressed()
                },
                label: {
                    Text("바탕색 변경")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(10)
                }
            )
        }
    }
    
    func buttonPressed(){
        backgoundColor = .yellow
    }
}

#Preview {
    ExtractViewBasic()
}
