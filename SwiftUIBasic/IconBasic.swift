//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/9/24.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing : 20){
            Image(systemName: "person.crop.circle.badge.moon.fill")
                .resizable()
            // rendermode dptj original 로 하게되면 실제  color 에서 multi colr 변경되게 됩니다.
            // 즉 고유 값 컬로. 변경되어서 color 를 변경하더라도 변경되지 않는 컬라 값이 된다.
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(Color.red)
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    IconBasic()
}
