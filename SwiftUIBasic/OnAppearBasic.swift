//
//  OnAppearBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/14/24.
//

import SwiftUI

struct OnAppearBasic: View {
    
    @State
    var noticeText: String = "onApear 시작 전"
    @State
    var count: Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(noticeText)
                
                LazyVStack{
                    ForEach(0..<50){ _ in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(height: 200)
                            .padding()
                        
                            .onAppear{
                                count += 1
                            }
                    }
                }
            }//scrolllview
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                    noticeText = "onAppear 시작 완료 했습니다."
                }
            }
            .navigationTitle("생성된 박스 : \(count)")
        }//navigation
    }
}

#Preview {
    OnAppearBasic()
}
