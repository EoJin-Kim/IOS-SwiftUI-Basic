//
//  ContextMenuBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/13/24.
//

import SwiftUI

struct ContextMenuBasic: View {
    
    @State
    var statusText: String = ""
    @State
    var backgound: Color = .cyan
    
    var body: some View {
        VStack(spacing: 30){
            Text(statusText)
            
            VStack(alignment: .leading, spacing: 10, content: {
                Text("Context Menu Test")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나타납니다.")
                    .font(.subheadline)
                
            })
            .foregroundColor(.white)
            .padding(30)
            .background(backgound)
            .contextMenu{
                Button(
                    action: {
                        statusText = "공유가 되었습니다"
                        backgound = .yellow
                    },
                    label: {
                        Label(
                            title: { Text("Shared post") },
                            icon: {
                                Image(systemName: "square.and.arrow.up")
                            }
                        )
                    }
                )
                
                Button(
                    action: {
                        statusText = "공유가 되었습니다"
                        backgound = .yellow
                    },
                    label: {
                        Label(
                            title: { Text("Shared post") },
                            icon: {
                                Image(systemName: "square.and.arrow.up")
                            }
                        )
                    }
                )
                
                Button(
                    action: {
                        statusText = "공유가 되었습니다"
                        backgound = .yellow
                    },
                    label: {
                        Label(
                            title: { Text("Shared post") },
                            icon: {
                                Image(systemName: "square.and.arrow.up")
                            }
                        )
                    }
                )
            }
        }
    }
}

#Preview {
    ContextMenuBasic()
}
