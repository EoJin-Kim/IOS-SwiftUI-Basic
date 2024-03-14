//
//  OnTabGestureBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/14/24.
//

import SwiftUI

struct OnTabGestureBasic: View {
    
    @State
    var isSelected: Bool = false
    
    
    var body: some View {
        VStack(spacing: 20){
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            Button(
                action: {
                    isSelected.toggle()
                },
                label: {
                    Text("1. 일반적인 Button")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(.blue)
                }
            )
            
            
            
            Text("2. onTabGesture 한번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.blue)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Text("3. onTabGesture 두번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.blue)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
        }.padding()
        
        Spacer()

    }
}

#Preview {
    OnTabGestureBasic()
}
