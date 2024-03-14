//
//  ConditionalBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct ConditionalBasic: View {
    
    @State
    var showCircle: Bool = false
    @State
    var showRectangle: Bool = false
    @State
    var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Button(
                action: {
                    isLoading.toggle()
                },
                label: {
                    Text("로드중..: \(isLoading.description)")
                }
            )
            
            if(isLoading){
                ProgressView()
            }
            
            Button(
                action: {
                    showCircle.toggle()
                },
                label: {
                    Text("원형 버튼: \(showCircle.description)")
                }
            )
            
            Button(
                action: {
                    showRectangle.toggle()
                },
                label: {
                    Text("사각형 버튼: \(showRectangle.description)")
                }
            )
            
            if(showCircle){
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if(showRectangle){
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if(showCircle == false && showRectangle == false){
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBasic()
}
