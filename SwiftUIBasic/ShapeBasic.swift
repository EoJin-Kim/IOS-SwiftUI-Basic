//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/9/24.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack(spacing: 20){
            Text("원형")
                .font(.title)
            Circle()
//                .fill(Color.blue)
//                .foregroundColor(.yellow)
//                .stroke(Color.red, lineWidth: 20)
//                .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30]))
                .trim(from: 0.2, to: 1.0)
                .stroke(Color.purple, lineWidth: 50)
                .frame(width: 200, height: 100)
                .padding()
            
            Text("타원형")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Ellipse()
                .fill(Color.green)
                .frame(width: 200, height: 100, alignment: .center)
                .background(Color.yellow)
            
            Text("캡술형")
            
            Capsule(style: .circular)
                .stroke(Color.blue, lineWidth: 30)
                .frame(width: 200, height: 100, alignment: .center)
            
            Text("직사강형")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100, alignment: .center)
            
        }
        VStack{
            
        }
    }
}

struct ShapeBasic2: View {
    var body: some View {
        VStack(spacing: 20){

            Text("둥근직사각형")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4, to: 1.0)
                .frame(width: 300, height: 200, alignment: .center)
        }
    }
}

#Preview {
    ShapeBasic()
}
#Preview {
    ShapeBasic2()
}
