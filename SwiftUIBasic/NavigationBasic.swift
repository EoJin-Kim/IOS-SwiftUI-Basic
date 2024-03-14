//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct NavigationBasic: View {
    
    
    @State
    var showSeet: Bool = false
    
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink {
                    // destination : 목적지 -> 어디로 페이지 이동할꺼냐
                    SecondNavigationView()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                }

            } // VStack
            .navigationTitle("페이지 제목")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
            
            .navigationBarItems(leading: Image(systemName: "line.3.horizontal"),
                                trailing: Button(
                                    action: {
                                        showSeet.toggle()
                                    }, label: {
                                        Image(systemName: "gear")
                                    }
                                )
            )
        }// NavigationView
        .sheet(isPresented: $showSeet, content: {
            Color.green.ignoresSafeArea()
            
            Text("설정페이지 입니다")
                .font(.largeTitle)
        })

    }
}

#Preview {
    NavigationBasic()
}
