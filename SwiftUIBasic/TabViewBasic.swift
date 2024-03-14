//
//  TabViewBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/14/24.
//

import SwiftUI

struct TabViewBasic: View {
    
    @State
    var initPageNumber: Int = 0
    
    var body: some View {
        TabView(selection: $initPageNumber){
            HomeView(selectedTab: $initPageNumber)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)
            
            Text("둘러보기 화면")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }.tag(1)
            
            Text("홈화면")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }.tag(2)
        }.accentColor(.red)
    }
}
struct HomeView: View {
    @Binding
    var selectedTab: Int
    
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea(.top)
            
            VStack(spacing: 20){
                Text("홈 화면")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(
                    action: {
                        selectedTab = 2
                    },
                    label: {
                        Text("프로필 화면으로 이동")
                            .foregroundStyle(.red)
                            .padding()
                            .background(.white)
                    }
                )
            }
        }
    }
}
#Preview {
    TabViewBasic()
}
