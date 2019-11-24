//
//  DeviceAddView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/24.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct DeviceAddView: View {
  var body: some View {
    NavigationView {
      ZStack {
        VStack{
          ZStack {
            VStack{
              Text("추가 기기 등록").font(.system(size: 21))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
              Spacer().frame(height:16)
              Text("새로운 클로바 기기가 있다면\n추가해보세요").font(.system(size: 18))
                .fontWeight(.regular)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
              Spacer().frame(height:24)
              Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("추가하기").foregroundColor(.white)
              }
              .frame(width: 138, height: 48, alignment: .center)
              .background(Color.blue)
              .cornerRadius(30)
            }
          }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
          VStack(alignment: .leading) {
            Text("Hello World")
              .font(.title)
            Text("Another")
              .font(.body)
            Spacer()
          }
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 124 ,alignment: .topLeading)
          .background(Color.red)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                
      }
      .navigationBarTitle("디바이스 추가")
      
    }
  }
}
struct DeviceAddView_Previews: PreviewProvider {
  static var previews: some View {
    DeviceAddView()
  }
}
