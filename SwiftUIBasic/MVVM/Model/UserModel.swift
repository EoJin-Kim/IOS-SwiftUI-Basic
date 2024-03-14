//
//  UserModel.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/15/24.
//

import Foundation

struct UserModel: Identifiable{
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
