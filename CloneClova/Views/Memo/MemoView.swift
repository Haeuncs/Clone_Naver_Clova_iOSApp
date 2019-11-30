//
//  MemoView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/30.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI
import KeyboardObserving

struct MemoModal: View {
  @EnvironmentObject var memoData: MemoData
  @Binding var showProfile: Bool
  var body: some View {
    //    KeyboardObservingView {
    ZStack {
      DimView(tappedCallback: { (click) in
        self.showProfile = false
        UIApplication.shared.endEditing()
      }, style: .extraLight)
      VStack{
        Spacer()
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
        MemoView(showProfile: $showProfile)
      }
    }
    //    }
    //    }.background(Color.white)
  }
}
struct MemoView: View {
  @EnvironmentObject var memoData: MemoData
  
  @Binding var showProfile: Bool
  
  @State var text = ""
  @State var viewState = CGSize.zero
  
  func createMemo() {
    print(memoData)
    let newMeno = Memo(title: text)
    self.memoData.updateMemo(memo: newMeno)
    showProfile = false
  }
  var body: some View {
    HStack{
      VStack{
        TextView(
          text: $text
        )
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
          .background(Color.white)
        HStack{
          Button(action: {}){
            HStack{
              Image(systemName: "trash")
                .foregroundColor(.black)
              Text("삭제")
                .font(.system(size: 18))
                .foregroundColor(.black)
            }
          }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
          Button(action: {self.createMemo()}){
            Text("확인")
              .font(.system(size: 18))
              .foregroundColor(Color.custom.blue)
          }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 76)
          .background(Color.custom.lightGray)
      }
      .background(Color.white)
      
    }
  }
  
}

struct MemoView_Previews: PreviewProvider {
  static var previews: some View {
    MemoModal(showProfile: .constant(false))
  }
}
