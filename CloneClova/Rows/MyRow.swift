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
      Spacer().frame(height:15)
      HStack{
        Text(my.title)
          .font(.system(size: 19))
          .fontWeight(.semibold)
          .multilineTextAlignment(.center)
        Spacer()
        if (my.isAdd) {
          Button(action: {}) {
            HStack(spacing:2) {
              Image(systemName: "plus").resizable()
                .frame(width: 12, height: 12)
              Text("추가").font(.system(size: 13))
                .fontWeight(.regular)
            }
          }.foregroundColor(.black)
            .frame(width: 56, height: 28, alignment: .center)    .overlay(
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.black, lineWidth: 0.6)
          )
        }
      }
      Spacer().frame(height:10)
      VStack(spacing: 0) {
        ForEach(my.descriptions, id:\.self) { description in
          Text("\"\(description)\"").font(.system(size: 20))
            .fontWeight(.regular)
            .foregroundColor(Color.custom.grey)
            .padding(.bottom, 10)
        }.frame(minWidth: 0, maxWidth: .infinity, alignment:.topLeading)
      }

//      frame(alignment:.leading)
      //      List(my.descriptions, id: \.self) { description in
      //        Text("\"\(description)\"").font(.system(size: 20))
      //          .fontWeight(.regular)
      //          .foregroundColor(.gray)
      //          .background(Color.red)
      //      }.padding(.horizontal, -16)
      //        .padding(.bottom,10)
      Spacer()
    }.frame(height:136)
  }
}

struct MyRow_Previews: PreviewProvider {
  static var previews: some View {
    MyRow(My(title:"리마인더를 등록해 보세요.",descriptions:["30분 뒤에 약 먹으라고 알려줘","아침 10시마다 운동가라고 알려줘"],isAdd:true))
  }
}
