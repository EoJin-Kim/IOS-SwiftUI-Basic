//
//  FrameBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/9/24.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        VStack(){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                .frame(width: 200, height: 200, alignment: .center)
                .background(Color.red)
            
            Divider()
            Text("Hello, World!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.red)
        }
        
    }
}

struct FrameBasic2: View {
    var body: some View {
        VStack(){
            Text("Hello, World")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 400)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
        }
        
    }
}
#Preview {
    FrameBasic()
}

#Preview {
    FrameBasic2()
}
