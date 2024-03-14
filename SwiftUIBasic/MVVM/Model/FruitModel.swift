//
//  FruitModel.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/15/24.
//

import Foundation

struct FruitModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
