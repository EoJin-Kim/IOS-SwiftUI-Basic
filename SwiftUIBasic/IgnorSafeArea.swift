//
//  IgnorSafeArea.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/11/24.
//

import SwiftUI

struct IgnorSafeArea: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea(edges: .top)
            
            VStack{
                Text("Hello, World!")
                    .font(.largeTitle)
            }
        }
    }
}

struct IgnorSafeArea2: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                ForEach(1..<11){ index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                        .overlay(
                            Text("\(index) 번 리스트")
                        )
                }
            }
        }.background(
            Color.blue
                .ignoresSafeArea()
        )
    }
}

#Preview {
    IgnorSafeArea()
}

#Preview {
    IgnorSafeArea2()
}
