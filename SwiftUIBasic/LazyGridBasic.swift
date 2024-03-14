//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/10/24.
//

import SwiftUI

struct LazyGridBasic: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
    ]
    
    let title: [String] = Array(1...1000).map{"목록 \($0)"}
    
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
    ]
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]){
                    Section(
                        header: Text("Section1")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .padding()
                    ){
                        ForEach(0..<20){ index in
                            Rectangle()
                                .fill(.gray)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                            
                        }
                    } // Section1
                    Section(
                        header: Text("Section2")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .padding()
                    ){
                        ForEach(0..<20){ index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                            
                        }
                    } // Section2
                }
        }
    }
}


struct LazyGridBasic2: View {
    

    let title: [String] = Array(1...1000).map{"목록 \($0)"}
    
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
    ]
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: layout, spacing: 20){
                ForEach(title, id: \.self){ item in
                    VStack{
                        Capsule()
                            .fill(.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                    }
                }
            }
        }
    }
}

#Preview {
    LazyGridBasic()
}

#Preview {
    LazyGridBasic2()
}

