//
//  AnimationBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct AnimationBasic: View {
    @State
    var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    
    var body: some View {
        VStack{
            Button(
                action: {
                    withAnimation(
                        .default
//                            .repeatCount(5)
//                            .repeatForever()
                            .delay(1.0)
                    ){
                        isAnimated.toggle()
                    }
                },
                label: {
                    Text("Button")
                }
            )
            
            Spacer()
            
            RoundedRectangle(cornerRadius:  isAnimated ? 50 : 0)
                .fill(isAnimated ? .red :.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                ).rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

struct AnimationBasic2: View {
    @State
    var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    
    var body: some View {
        VStack{
            Button(
                action: {
                    isAnimated.toggle()
                },
                label: {
                    Text("Button")
                }
            )
            
            Spacer()
            
            // linear animation : 처음부터 끝까지 속도가 일정
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
        }
    }
}

struct AnimationBasic3: View {
    @State
    var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    
    var body: some View {
        VStack{
            Button(
                action: {
                    withAnimation(
                        .spring(
                            response: 0.5,
                            dampingFraction: 0.5, // 0 ~ 1.0
                            blendDuration: 0
                            
                        )
                    ){
                        isAnimated.toggle()
                    }
                    
                },
                label: {
                    Text("Button")
                }
            
            )
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
            Spacer()

        }
    }
}

#Preview {
    AnimationBasic()
}

#Preview {
    AnimationBasic2()
}
#Preview {
    AnimationBasic3()
}
