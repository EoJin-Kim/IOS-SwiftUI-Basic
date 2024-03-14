//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/10/24.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            VStack{
                ForEach(0..<50){ index in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                        .overlay(
                            Text("\(index) 번")
                                .font(.title)
                        )
                }
            }
        }
    }
}
struct ScrollViewBasic2: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true){
            HStack{
                ForEach(0..<50){ index in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 300, height: 300)
                        .overlay(
                            Text("\(index) 번")
                                .font(.title)
                        )
                }
            }
        }
    }
}
struct ScrollViewBasic3: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<10){ _ in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack{
                            ForEach(0..<20) { _ in
                               RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(.white)
                                    .frame(width: 200, height: 200)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic()
}
#Preview {
    ScrollViewBasic2()
}
#Preview {
    ScrollViewBasic3()
}
