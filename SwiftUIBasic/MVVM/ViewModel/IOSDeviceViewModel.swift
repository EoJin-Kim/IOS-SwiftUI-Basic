//
//  IOSDeviceViewModel.swift
//  SwiftUIBasic
//
//  Created by kej on 3/15/24.
//

import Foundation

class IOSDeviceViewModel: ObservableObject{
    
    @Published
    var iOSDeviceArray: [IOSDeviceModel] = []
    
    init(){
        getData()
    }
    
    func getData(){
        let iphone = IOSDeviceModel(name: "아이폰")
        let ipad = IOSDeviceModel(name: "아이패드")
        let imac = IOSDeviceModel(name: "아이맥")
        let watch = IOSDeviceModel(name: "애플워치")
        
        self.iOSDeviceArray.append(iphone)
        self.iOSDeviceArray.append(ipad)
        self.iOSDeviceArray.append(imac)
        self.iOSDeviceArray.append(watch)
    }
}
