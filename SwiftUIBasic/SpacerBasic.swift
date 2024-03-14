//
//  SpacerBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/10/24.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        HStack(spacing: 0){
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(.orange)
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(.orange)
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(.orange)
        }.background(.yellow)
    }
}

struct SpacerBasic2: View {
    var body: some View {
        HStack(spacing: 0){
            Image(systemName: "xmark")
            Spacer()
            Image(systemName: "gear")
        }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding(.horizontal)
        .background(.yellow)
        Spacer()
            .background(.green)
    }
}

#Preview {
    SpacerBasic()
}
#Preview {
    SpacerBasic2()
}
