//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/10/24.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                .background(.yellow)
                .padding() // .padding(.all, 15)
                .padding(.leading, 20)
                .background(.blue)
                .padding(.bottom, 20)
            
            Divider()
            
            // 패딩 응용
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요 헬로우 월드에 오신 여룬 환영합니다.안녕하세요 헬로우 월드에 오신 여룬 환영합니다.안녕하세요 헬로우 월드에 오신 여룬 환영합니다.안녕하세요 헬로우 월드에 오신 여룬 환영합니다.안녕하세요 헬로우 월드에 오신 여룬 환영합니다.")
        }).padding()
            .padding(.vertical, 30)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(
                        color: .black.opacity(0.3), radius: 10, x: 10, y: 10
                    )
            )
            .padding()
    }
}

#Preview {
    PaddingBasic()
}
