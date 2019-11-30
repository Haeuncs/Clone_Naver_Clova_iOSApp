//
//  MemoListView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/30.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct MemoListView: View {
  @EnvironmentObject var memoData: MemoData
  var body: some View {
    //    List {
    VStack {
      VStack{
        Spacer().frame(height:15)
        HStack{
          Text("메모를 작성해 보세요.")
            .font(.system(size: 19))
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
          Spacer()
          if (true) {
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
        
        ForEach(self.memoData.memos!) { memo in
          MemoCell(memo: memo)
          Spacer().frame(height:6)
          //      }
        }
      }
    }
  }
}
struct MemoListView_Previews: PreviewProvider {
  static var previews: some View {
    MemoListView()
  }
}
