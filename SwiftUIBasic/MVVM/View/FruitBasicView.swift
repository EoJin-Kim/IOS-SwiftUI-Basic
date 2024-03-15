//
//  FruitBasicView.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/15/24.
//

import SwiftUI

struct FruitBasicView: View {
    
    // SubView애서 사용 (부모 View 값을 넘겨 받음)
//    @ObservedObject
//    var fruitViewModel = FruitViewModel()
    
    @StateObject
    var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                if(fruitViewModel.isLoading){
                    ProgressView()
                } else{
                    ForEach(fruitViewModel.fruitArray){ fruit in
                        HStack(spacing: 20){
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        } //hstack
                    }// loop
                }
            }//list
            .onAppear{
//                fruitViewModel.getFruit()
            }
            .navigationBarItems(
                trailing: NavigationLink(
                    destination: {
                        SecondScreen(fruitViewModel: fruitViewModel)
                    
                    }, label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }
                )
            )
            .navigationTitle("과일 리스트")
        }// navigation
    }
}

struct SecondScreen: View {
    
    @ObservedObject
    var fruitViewModel = FruitViewModel()
    
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 20){
                ForEach(fruitViewModel.fruitArray){ fruit in
                    Text(fruit.name)
                }
                Button(
                    action: {
                        presentationMode.wrappedValue.dismiss()
                    },
                    label: {
                        Text("뒤로가기")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                )
            }
        }
    }
}
#Preview {
    FruitBasicView()
}
