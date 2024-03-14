//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/9/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(
            spacing: 20
        ){
            Text("Hello, Worldss!")
                .font(.title)
                .fontWeight(.semibold)
                .bold()
                .underline(true, color: Color.red)
                .italic()
                .strikethrough(true, color: Color.green)
                
            Text("Hello, Worldss2!2".uppercased())
                .font(.system(size: 25, weight: .black, design: .monospaced))
            
            Text("멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다.멀티라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.trailing)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
        }
        
    }
}
	
#Preview {
    TextBasic()
}
