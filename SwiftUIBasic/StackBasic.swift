//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/10/24.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
    }
}

struct StackBasic2: View {
    var body: some View {
        HStack(spacing: 20){
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
    }
}

struct StackBasic3: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
    }
}

struct StackBasic4: View {
    var body: some View {
        ZStack(alignment: .top){
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500)
            VStack(alignment: .leading, spacing: 30){
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, spacing: 10){
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 25, height: 25)
                }.background(.white)
                
            }.background(.black)
        }
        
    }
}

struct StackBasic5: View {
    var body: some View {
        VStack(spacing: 50){
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }
            Text("1")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .background(Circle().frame(width: 100, height: 100))
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(.yellow)

    }
}


#Preview {
    StackBasic()
}
#Preview {
    StackBasic2()
}
#Preview {
    StackBasic3()
}
#Preview {
    StackBasic4()
}
#Preview {
    StackBasic5()
}
