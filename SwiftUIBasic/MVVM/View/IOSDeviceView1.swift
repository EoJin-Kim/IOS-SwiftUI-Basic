//
//  IOSDeviceView1.swift
//  SwiftUIBasic
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    
    @StateObject
    var viewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.iOSDeviceArray){ item in
                    NavigationLink {
                        
                        IOSDeviceView2(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                    }

                }
            }//list
        }//navigation
        .environmentObject(viewModel)
    }
}

#Preview {
    IOSDeviceView1()
}
