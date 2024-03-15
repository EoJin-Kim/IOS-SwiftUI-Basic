//
//  IOSDeviceViewView2.swift
//  SwiftUIBasic
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct IOSDeviceView2: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
            VStack(spacing: 20){
                Text("당신이 선택한 기기근")
                    .font(.title)
                
                Text(selectedItem)
                    .foregroundColor(.white)
                
                NavigationLink {
                    IOSDeviceView3()
                } label: {
                    Text("다음 페이지로 이동 -> ")
                        .font(.headline)
                        .foregroundColor(.white)
                }

            }
        }
    }
}

#Preview {
    IOSDeviceView2(selectedItem: "아이폰")
}
