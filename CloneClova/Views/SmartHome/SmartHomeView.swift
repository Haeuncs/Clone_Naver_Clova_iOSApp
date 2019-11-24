//
//  SmartHomeView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/24.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct SmartHomeView: View {
  @State private var isSHowMic = false
  func closeMic() {
    isSHowMic = false
  }
  var body: some View {
    NavigationView {
      ZStack {
        VStack{
          ZStack {
            VStack{
              Text("기기를 연결하고\n이렇게 사용해보세요.").font(.system(size: 21))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
              Spacer().frame(height:16)
              Text("\"조명 밝기 올려줘\"").font(.system(size: 18))
                .fontWeight(.regular).foregroundColor(.gray)
              Spacer().frame(height:12)
              Text("\"에어컨 온도 내려줘\"").font(.system(size: 18))
                .fontWeight(.regular).foregroundColor(.gray)
              Spacer().frame(height:12)
              Text("\"로봇청소기 시작해줘\"").font(.system(size: 18))
                .fontWeight(.regular).foregroundColor(.gray)
              Spacer().frame(height:36)
              Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("등록하기").foregroundColor(.white)
              }
              .frame(width: 138, height: 48, alignment: .center)
              .background(Color.blue)
              .cornerRadius(30)
            }
          }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
          VStack(alignment: .leading) {
            Text("배너위치")
              .font(.title)
            Spacer()
          }
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 124 ,alignment: .topLeading)
          .background(Color.blue)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        
        VStack{
          Spacer()
          HStack {
            Spacer()
            Button(action: {
              self.isSHowMic = true
            }) {
              Image(systemName: "mic.circle.fill").resizable().frame(width: 56, height: 56, alignment: .center)
                .background(Color.white).cornerRadius(56/2)
                .foregroundColor(.green).shadow(color: Color(.black).opacity(0.35), radius: 2, x: 0, y: 3).padding(.bottom, 10)
            }
          }
        }.padding([.leading,.trailing], 20)
        
        if isSHowMic {
          speakView(showingModal: $isSHowMic)
        }
      }
      .navigationBarTitle("스마트홈")
    }
  }
}

struct SmartHomeView_Previews: PreviewProvider {
  static var previews: some View {
    SmartHomeView()
  }
}
