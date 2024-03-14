//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct StateBasic: View {
    
    @State
    var backgoundColor: Color = Color.green
    @State
    var myTitle: String = "아직 버튼 안눌림"
    @State
    var count: Int = 0
    
    
    var body: some View {
        ZStack{
            backgoundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                
                Text("카운트: \(count)")
                
                HStack(spacing: 20){
                    Button(
                        action: {
                            backgoundColor = .red
                            myTitle = "1번 버튼 눌림"
                            count+=1
                        },
                        label: {
                            Text("1번 버튼")
                        }
                    )
                    
                    Button(
                        action: {
                            backgoundColor = .purple
                            myTitle = "2번 버튼 눌림"
                            count-=1
                        },
                        label: {
                            Text("2번 버튼")
                        }
                    )
                }
            }.foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}
