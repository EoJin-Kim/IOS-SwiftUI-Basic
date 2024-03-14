//
//  TransactionBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct TransitionBasic: View {
    
    @State
    var showTrasition: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button(
                    action: {
                        withAnimation(.easeInOut){
                            showTrasition.toggle()
                        }
                    },
                    label: {
                        Text("Button")
                    }
                )
                Spacer()
            }
            if(showTrasition){
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTrasition ? 1.0 : 0.0)
                
                
                // 1번 move transition
//                    .transition(.move(edge: .bottom))
                
                // 2.번 opacity transition
//                    .transition(.opacity)
                // 3. scale transition
//                    .transition(.scale)
                
                // 4번 asynmetric transition - 시작점 끝나는 지점을 custom  정해주기 때문에 비대칭 transition
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBasic()
}
