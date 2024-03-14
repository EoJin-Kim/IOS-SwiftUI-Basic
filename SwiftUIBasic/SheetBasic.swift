//
//  SheetBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct SheetBasic: View {
    @State
    var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            Button(
                action: {
                    showSheet.toggle()
                }, label: {
                    Text("button")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                }
                
            )
//            .sheet(isPresented: $showSheet){
//                SheetBasic2()
//            }
            .fullScreenCover(isPresented: $showSheet){
                SheetBasic2()
            }
        }
    }
}

#Preview {
    SheetBasic()
}
