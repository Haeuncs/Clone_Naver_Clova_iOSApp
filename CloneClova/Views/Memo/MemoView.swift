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
  @EnvironmentObject var userData: TextViewData
  @Binding var showProfile: Bool
  
  @Binding var selectUUID: UUID?
  @Binding var selectMemo: Memo?
  
  @State var text: String = "Empty"
  
  var body: some View {
    KeyboardObservingView {
      ZStack {
        DimView(tappedCallback: { (click) in
          self.showProfile = false
          self.userData.reset()
          UIApplication.shared.endEditing()
        }, style: .extraLight)
        VStack{
          Spacer()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
          MemoView(showProfile: $showProfile,
                   selectUUID: $selectUUID,
                   selectMemo: $selectMemo)
        }
      }
    }
  }
}
struct MemoView: View {
  @EnvironmentObject var memoData: MemoData
  @EnvironmentObject var userData: TextViewData
  
  @Binding var showProfile: Bool
  @Binding var selectUUID: UUID?
  @Binding var selectMemo: Memo?
  

  @State var viewState = CGSize.zero
  

  func createMemo() {
    print(self.memoData.memos)
    
    guard let index = self.memoData.memos!.firstIndex(where: { $0.id == selectUUID })  else {
      let newMeno = Memo(title: self.userData.text)
      self.memoData.updateMemo(memo: newMeno)
      UIApplication.shared.endEditing()
      showProfile = false
      return
    }
    
    self.memoData.memos?[index].title = self.userData.text
    self.memoData.memos?[index].date = Date()
    self.memoData.updateMemos()
    print(self.memoData.memos)
    userData.reset()
    UIApplication.shared.endEditing()
    showProfile = false
  }
  func deleteMemo(){
    if self.memoData.memos != nil {
      self.memoData.memos!.removeAll(where: { $0.id == selectUUID })
    }
    self.memoData.updateMemos()
    userData.reset()
    UIApplication.shared.endEditing()
    showProfile = false
  }
//  var placeholderView: some View {
//    Group {
//      if userData.text == ""  {
//        Text(placeholder)
//          .foregroundColor(.gray)
//          .font(.system(size: 25))
//          .padding(.leading, 4)
//          .padding(.top, 8)
//      }
//    }
//  }
  
  var body: some View {
    HStack{
      VStack{
        TextView(
          text:  $userData.text
        )
//          .overlay(placeholderView, alignment: .topLeading)
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
          .background(Color.white)
        HStack{
          Button(action: {}){
            HStack{
              Image(systemName: "trash")
                .foregroundColor(.black)
              Button(action: {self.deleteMemo()}) {
                Text("삭제")
                  .font(.system(size: 18))
                  .foregroundColor(.black)
              }
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
    MemoModal(showProfile: .constant(false), selectUUID: .constant(nil), selectMemo: .constant(nil))
  }
}
