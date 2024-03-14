//
//  FruitViewModel.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/15/24.
//

import Foundation

class FruitViewModel: ObservableObject{
    
    @Published
    var fruitArray: [FruitModel]=[]
    @Published
    var isLoading: Bool = false
    
    
    func getFruit(){
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 2)
        let fruit3 = FruitModel(name: "바나나", count: 33)
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}
