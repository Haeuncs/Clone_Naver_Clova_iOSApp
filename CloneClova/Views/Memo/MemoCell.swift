//
//  MemoCell.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/30.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct MemoCell: View {
  
  let memo: Memo

  func convertDateToString(date: Date) -> String {
    let df = DateFormatter()
    df.locale = Locale(identifier: "ko_KR")
    df.amSymbol = "오전"
    df.pmSymbol = "오후"
    df.dateFormat = "M. dd. E h:mm a"
    return df.string(from: date)
  }
  var body: some View {
    ZStack {
      VStack{
        Spacer()
        Text(memo.title)
          .foregroundColor(.white)
          .font(.system(size: 20))
          .fontWeight(.regular)
          .multilineTextAlignment(.leading)
          .lineLimit(1)
          .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal, 20)
        Spacer().frame(minWidth: 5, maxWidth: 5, minHeight: 2, maxHeight: 2, alignment: .trailing)
        Text(convertDateToString(date: memo.date))
          .foregroundColor(.white)
          .font(.system(size: 14))
          .fontWeight(.light)
          .multilineTextAlignment(.leading)
          .lineLimit(1)
          .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal, 20)
        Spacer()
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 84, maxHeight: 84, alignment: .topLeading)
      .background(Color.custom.grayBlue)
      .cornerRadius(4)
    }
  }
}


struct MemoCell_Previews: PreviewProvider {
  static var previews: some View {
    MemoCell(memo: Memo(title: "test"))
  }
}
