//
//  UserModelBasicView.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/15/24.
//

import SwiftUI

struct UserModelBasicView: View {
    
    @State
    var users: [UserModel] = [
        UserModel(displayName: "철수", userName: "철수123", followerCount: 100, isChecked: true),
        UserModel(displayName: "영희", userName: "철수영희123", followerCount: 2, isChecked: false),
        UserModel(displayName: "감차", userName: "감자123", followerCount: 132, isChecked: false),
        UserModel(displayName: "바마", userName: "바마123", followerCount: 12311, isChecked: true)
    ]
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users){ user in
                    HStack(spacing: 20){
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                        }
                        Spacer()
                        
                        if(user.isChecked){
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                                .foregroundColor(.gray)
                            Text("Follwers")
                        } //Vstack
                    } //HStack
                    .padding(10)
                }// Loop
            }// List
        }//navigationview
        .navigationTitle("회원리스트")
    }
}

#Preview {
    UserModelBasicView()
}
