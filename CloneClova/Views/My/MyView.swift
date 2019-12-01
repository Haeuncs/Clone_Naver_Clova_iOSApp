//
//  MyView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/24.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

let MyDatas = [
  My(title:"리마인더를 등록해 보세요.",descriptions:["30분 뒤에 약 먹으라고 알려줘","아침 10시마다 운동가라고 알려줘"],isAdd:true),
  My(title:"메모를 작성해 보세요.",descriptions:["라코타 치즈 사라고 메모해줘","헬스장 등록하기 메모해줘"],isAdd:true),
  My(title:"몇시로 알람을 맞출까요?",descriptions:["평일 아침 7시마다 깨워줘","금요일 저녁 6시마다 알람 해줘"]),
  My(title:"타이머를 맞춰 볼까요?",descriptions:["10분 뒤에 알려줘","반숙 타이머 해줘"])
]

struct MyView: View {
  @EnvironmentObject var memoData: MemoData
  
  @Binding var showingModal: Bool
  @State var showMemo = false
  @State var selectUUID: UUID?
  
  @State var selectMemo: Memo?
  
  func checkMemoData( data: My) -> AnyView {
    if (data.title == MyDatas[1].title && !memoData.isEmpty()) {
      return AnyView(MemoListView(memoData: self._memoData, showMemo: $showMemo, selectUUID: $selectUUID, selectMemo: $selectMemo))
    }else{
      return AnyView(MyRow(my: data, showMemo: $showMemo))
    }
  }
  var body: some View {
    
    ZStack {
      NavigationView {
        ZStack {
          ScrollView{
            ForEach(MyDatas, id: \.title) { data in
              Button(action:{}){
                self.checkMemoData(data: data)
              }
            }
            .padding(.horizontal, 16)
          }
          .buttonStyle(PlainButtonStyle())

          
          VStack{
            Spacer()
            HStack {
              Spacer()
              Button(action: {
                self.showMemo.toggle()
                //              self.showingModal.toggle()
              }) {
                Image(systemName: "mic.circle.fill").resizable().frame(width: 56, height: 56, alignment: .center)
                  .background(Color.white).cornerRadius(56/2)
                  .foregroundColor(Color.custom.theme)
                  .shadow(color: Color(.black).opacity(0.35), radius: 2, x: 0, y: 3).padding(.bottom, 10)
              }
            }
          }.padding([.leading,.trailing], 20)
        }
        .navigationBarTitle("마이")
      }
      MemoModal(showProfile: $showMemo, selectUUID: $selectUUID, selectMemo: $selectMemo)
        .animation(.spring())
        .offset(y: showMemo ? 0 : UIScreen.main.bounds.height)
      
    }
  }
  
}

struct MyView_Previews: PreviewProvider {
  static var previews: some View {
    MyView(showingModal: .constant(false))
  }
}
