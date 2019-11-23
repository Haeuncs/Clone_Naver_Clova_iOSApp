//
//  MyRow.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/24.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct MyRow: View {
  var my: My
  
  init(_ my:My) {
    // To remove only extra separators below the list:
    UITableView.appearance().tableFooterView = UIView()
    
    // To remove all separators including the actual ones:
    UITableView.appearance().separatorStyle = .none
    
    self.my = my
  }
  var body: some View {
    VStack{
      HStack{
        Text(my.title).font(.system(size: 19))
          .fontWeight(.medium)
          .multilineTextAlignment(.center)
        Spacer()
        if (my.isAdd) {
          HStack{
            Image(systemName: "plus").resizable().frame(width: 12, height: 12, alignment: .leading)
            Spacer()
            Text("추가").font(.system(size: 13))
              .fontWeight(.regular)
          }.frame(width: 56, height: 28, alignment: .trailing)    .overlay(
            RoundedRectangle(cornerRadius: 12)
              .stroke(Color.black, lineWidth: 0.6)
          )
        }
      }
      List(my.descriptions, id: \.self) { description in
        Text("\"\(description)\"").font(.system(size: 20))
          .fontWeight(.regular)
          .foregroundColor(.gray)
      }.padding(.horizontal, -16)
      Spacer()
    }.frame(height:136)
  }
}

struct MyRow_Previews: PreviewProvider {
  static var previews: some View {
    MyRow(My(title:"리마인더를 등록해 보세요.",descriptions:["30분 뒤에 약 먹으라고 알려줘","아침 10시마다 운동가라고 알려줘"],isAdd:true))
  }
}
