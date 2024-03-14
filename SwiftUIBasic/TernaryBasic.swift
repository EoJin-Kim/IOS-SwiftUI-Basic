//
//  TernaryBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct TernaryBasic: View {
    
    @State
    var isStartingState: Bool = false
    
    
    var body: some View {
        VStack{
            Button(
                action: {
                    isStartingState.toggle()
                }, label: {
                    Text("if else 버튼: \(isStartingState.description)")
                }
            )
            
            if(isStartingState){
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .fill(.red)
                    .frame(width: 200, height: 100)
            }else{
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.blue)
                    .frame(width: 200, height: 100)
            }
            
            Button(
                action: {
                    isStartingState.toggle()
                },
                label: {
                    Text(isStartingState ? "빨강" : "파랑")
                }
            )
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 100
                )
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBasic()
}
