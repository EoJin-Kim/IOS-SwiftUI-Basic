//
//  StepperBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/14/24.
//

import SwiftUI

struct StepperBasic: View {
    
    @State
    var stepperValue: Int = 0
    @State
    var widthChange: CGFloat = 0
    
    
    var body: some View {
        VStack{
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthChange, height: 100)
            
            Stepper("직사강형 너비 변화", 
                onIncrement: {
                    differentWidht(amount: 20)
                } ,
                onDecrement: {
                    differentWidht(amount: -20)
                }
            )
        }
    }
    
    func differentWidht(amount: CGFloat){
        withAnimation(.easeOut){
            widthChange += amount
        }
    }
}

#Preview {
    StepperBasic()
}
