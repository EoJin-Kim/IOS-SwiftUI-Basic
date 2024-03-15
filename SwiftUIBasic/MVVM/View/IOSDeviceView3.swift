//
//  IOSDeviceView3.swift
//  SwiftUIBasic
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    @EnvironmentObject
    var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack{
            Color.cyan.ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.iOSDeviceArray){ item in
                        Text(item.name)
                    }
                }
            }
        }
    }
}

#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel())
}
