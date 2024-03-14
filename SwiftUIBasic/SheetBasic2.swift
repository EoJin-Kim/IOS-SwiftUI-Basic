//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/12/24.
//

import SwiftUI

struct SheetBasic2: View {
    
    @Environment(\.presentationMode)
    var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red.ignoresSafeArea()
            
            Button(
                action: {
                    presentationMode.wrappedValue.dismiss()
                },
                label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.white)
                    
                }
            )
        }
    }
}

#Preview {
    SheetBasic2()
}
