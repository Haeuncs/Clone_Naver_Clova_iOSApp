//
//  DeviceView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/24.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

//Color(red: 246 / 255, green: 89 / 255, blue: 113 / 255)
let states = [
  DeviceStateModel(image: Image(systemName: "moon"), color: Color(red: 246 / 255, green: 89 / 255, blue: 113 / 255), text: "방해금지"),
  DeviceStateModel(image: Image(systemName: "sun.max"), color: Color(red: 65 / 255, green: 84 / 255, blue: 107 / 255), text: "무드등"),
  DeviceStateModel(image: Image(systemName: "wifi"), color: Color(red: 65 / 255, green: 84 / 255, blue: 107 / 255), text: "WIFI")
]

let settingSection0 = [
  "알람 소리",
  "블루투스",
  "리모컨",
  "단축 버튼",
  "호출명",
  "기기 음성",
  "기기 위치",
]
let settingSection1 = [
  "기기 정보",
  "사용 안내",
  "설정 초기화",
  "연결 해제"
]
struct DeviceView: View {
  var section0Count = 0
  var section1Count = 0
  init(){
    self.section0Count = (70 * (settingSection0.count))
    self.section1Count = 70 * settingSection1.count
  }
  var body: some View {
    NavigationView {
      
      ScrollView {
        VStack{
          VStack {
            VStack{
              Image("clova")
                .resizable()
                .frame(width:200, height: 250)
              HStack{
                Image(systemName: "bolt.fill")
                Image(systemName: "battery.100")
                Text("100%")
                  .font(.system(size: 16))
                  .fontWeight(.bold)
              }
              .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            }
          }
          HStack{
            ForEach(states, id:\.text) { data in
              VStack{
                HStack {
                  data.image
                    .resizable().frame(width: 30,height:30)
                    .foregroundColor(.white)
                }.frame(width: 70, height: 70, alignment: .center)
                  .background(data.color)
                  .cornerRadius(70/2)
                Text(data.text)
                  .font(.system(size: 13))
                  .foregroundColor(.gray)
              }
            }
          }
        }.background(Color(red: 249/255, green: 249/255, blue: 249/255))
        
        VStack{
          ForEach(settingSection0, id: \.self) { data in
            DeviceRow(title: data)
          }
        }
        Divider()
        VStack{
          ForEach(settingSection1, id: \.self) { data in
            DeviceRow(title: data)
          }
        }
      }
        //      }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .navigationBarTitle("나의 WAVE")
    }
  }
}

struct DeviceView_Previews: PreviewProvider {
  static var previews: some View {
    DeviceView()
  }
}
