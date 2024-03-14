//
//  TextFieldBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/14/24.
//

import SwiftUI

struct TextFieldBasic: View {
    
    @State
    var inputText: String = ""
    @State
    var userNameData: [String] = []
    
    var body: some View {
        NavigationView{
            VStack{
                // 한줄
                TextField("최소 2글자 이상 입력", text: $inputText)
//                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .font(.headline)
                
                // TextEditor 여러줄
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(Color.gray.opacity(0.5))
                
                Button(
                    action: {
                        if(isTextEnough()){
                            saveText()
                        }
                    },
                    label: {
                        Text("save".uppercased())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(isTextEnough() ? Color.blue : Color.gray)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                )
                .disabled(!isTextEnough())
                
                ForEach(userNameData, id: \.self){ item in
                    Text(item)
                }
                Spacer()
            }//VStack
            .padding()
            .navigationTitle("당신의 이름은?")
        }// NavigationView
    }
    
    func isTextEnough() -> Bool {
        if(inputText.count >= 2){
            return true
        }else{
            return false
        }
    }
    
    func saveText(){
        userNameData.append(inputText)
        inputText = ""
    }
}

#Preview {
    TextFieldBasic()
}
