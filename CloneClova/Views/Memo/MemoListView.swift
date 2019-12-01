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
  @EnvironmentObject var textData: TextViewData

  @Binding var showMemo: Bool
  @Binding var selectUUID: UUID?
  @Binding var selectMemo: Memo?
  
  var body: some View {
    //    List {
    
    VStack{
      Spacer().frame(height:15)
      HStack{
        Text("메모")
          .font(.system(size: 19))
          .fontWeight(.semibold)
          .multilineTextAlignment(.center)
        Spacer()
        if (true) {
          Button(action: {
            self.textData.reset()
            self.selectUUID = nil
            self.selectMemo = nil
            self.showMemo = true
          }) {
            HStack(spacing:2) {
              Image(systemName: "plus").resizable()
                .frame(width: 12, height: 12)
              Text("추가").font(.system(size: 13))
                .fontWeight(.regular)
            }
          }
          .foregroundColor(.black)
            .frame(width: 56, height: 28, alignment: .center)
            .overlay(
              RoundedRectangle(cornerRadius: 14)
                .stroke(Color.black, lineWidth: 0.6)
          )
          .padding(.trailing, 2)
        }
      }
      Spacer().frame(height:10)
      
      //        List{
      ForEach(self.memoData.memos!) { memo in
        Button(action:{
          print(memo)
          self.selectUUID = memo.id
          self.selectMemo = memo
          self.textData.text = memo.title
          self.showMemo = true
        }){
          MemoCell(memo: memo)
        }
        Spacer().frame(height:6)
        //      }
      }
      //        }
    }
  }

}
//struct MemoListView_Previews: PreviewProvider {
//  static var previews: some View {
//    MemoListView(selectMemo: co)
//  }
//}
