//
//  DatePickerBasic.swift
//  SwiftUIBasic
//
//  Created by 김어진 on 3/14/24.
//

import SwiftUI

struct DatePickerBasic: View {
    
    @State var seletedDate1: Date = Date()
    @State var seletedDate2: Date = Date()
    @State var seletedDate3: Date = Date()
    @State var seletedDate4: Date = Date()
    @State var seletedDate5: Date = Date()
    
    var currentDate: String {
        let current = Date()
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko_kr") // 날짜와 시간
        
//        formatter.timeZone = TimeZone(abbreviation: "KST") // 한국 시간대
        
        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분 ss초"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        return formatter.string(from: current)
    }
    
    var dateFormmater: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        
        return formatter
    }
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true){
            VStack(spacing: 20){
                Text("현재시간: \(currentDate)")
                
                Divider()
                
                VStack{
                    DatePicker("기본 DatePicker", selection: $seletedDate1)
                        .accentColor(.red)
                        .datePickerStyle(.compact)
                    
                    Text("선택된 날짜는 \(dateToKr(selectedDate: seletedDate1))")
                }.padding()
                
                Divider()
                VStack{
                    DatePicker("달력", selection: $seletedDate2)
                        .datePickerStyle(.graphical)
                    Text("선택된 날짜는 \(dateToKr(selectedDate: seletedDate2))")
                }.padding()
                
                Divider()
                VStack{
                    DatePicker("휠", selection: $seletedDate3)
                        .datePickerStyle(.wheel)
                    Text("선택된 날짜는 \(dateToKr(selectedDate: seletedDate3))")
                }.padding()
                
                Divider()
                VStack{
                    DatePicker("날짜만 선택", selection: $seletedDate4, displayedComponents: [.date])
                        
                    Text("선택된 날짜는 \(dateToKr(selectedDate: seletedDate4))")
                }.padding()
                
                Divider()
                VStack{
                    DatePicker("시간만 선택", selection: $seletedDate5, displayedComponents: [.hourAndMinute])
                        
                    Text("선택된 날짜는 \(dateToKr(selectedDate: seletedDate5))")
                }.padding()
            }//VStack
        } // Scroll
    }
    
    func dateToKr(selectedDate: Date) -> String{
        
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ko_kr") // 날짜와 시간
        
//        formatter.timeZone = TimeZone(abbreviation: "KST") // 한국 시간대
        
        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분 ss초"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        return formatter.string(from: selectedDate)
    }
}

#Preview {
    DatePickerBasic()
}
