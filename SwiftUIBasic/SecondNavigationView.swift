//
//  SecondNavigationView.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct SecondNavigationView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 20){
                Button(
                    action: {
                        presentationMode.wrappedValue.dismiss()
                    },
                    label: {
                        Text("이전 페이지로 이동")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .font(.headline)
                            .padding()
                            .background(.white)
                            .cornerRadius(15)
                    }
                )
                
                NavigationLink{
                    ZStack{
                        Color.red.ignoresSafeArea()
                        Text("3번째 페이지 입니다")
                            .font(.largeTitle)
                    }
                }label: {
                    Text("3번째 페이지로 이동")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .font(.headline)
                        .padding()
                        .background(.white)
                        .cornerRadius(15)
                }
            }
        }
    }
}

#Preview {
    NavigationView{
        SecondNavigationView()
    }
    
}
