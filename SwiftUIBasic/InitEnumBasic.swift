//
//  InitEnumBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/10/24.
//

import SwiftUI

struct InitEnumBasic: View {
    
    // 변수 선언
    let backgoundColor: Color
    let count: Int
    let title: String
    
    // enum 생성
    enum Fruit{
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit){
        self.count = count
        if(fruit == .apple){
            self.title = "사과"
            self.backgoundColor = .red
        }else{
            self.title = "오렌지"
            self.backgoundColor = .orange
        }
    }
    var body: some View {
        VStack(spacing: 20, content: {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }).frame(width: 150, height: 150)
            .background(backgoundColor)
            .cornerRadius(10)
    }
}

#Preview {
    InitEnumBasic(count: 100, fruit: .apple)
}
