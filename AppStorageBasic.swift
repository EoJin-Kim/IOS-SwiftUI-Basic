//
//  AppStorageBasic.swift
//  SwiftUIBasic
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct AppStorageBasic: View {
    
    @State
    var generalName: String?
    
    @AppStorage("name")
    var appStorageName: String?
    
    var body: some View {
        VStack(spacing: 20){
            
            VStack(spacing: 10){
                Text("@State 로 저장")
                    .font(.headline)
                Text(generalName ?? "당신의 이름은 무엇인가요")
                
                Button {
                    generalName = "Jacob"
                                    } label: {
                    Text("이름 불러오기")
                }

            }.padding()
                .border(.green)
            
            VStack(spacing: 10){
                Text("@AppStorge 로 저장")
                    .font(.headline)
                Text(appStorageName ?? "당신의 이름은 무엇인가요")
                
                Button {
                    
                    appStorageName = "Jacob"
                } label: {
                    Text("이름 불러오기")
                }
                
            }.padding()
                .border(.green)
        }//VSTack
    }
}

#Preview {
    AppStorageBasic()
}
