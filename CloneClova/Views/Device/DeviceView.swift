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
  @State var sliderValue = 0.0
  var minimumValue = 0.0
  var maximumvalue = 100.0
  
  init(){
//    UINavigationBar.appearance().backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1)
  }
  var body: some View {
      
      ScrollView {
        VStack{
          Spacer().padding(.top, 47)
          HStack{
            Text("나의 WAVE")
              .font(.system(size:34))
              .fontWeight(.bold)
            Spacer()
                HStack {
                  Button(action: {}) {
                    Image(systemName: "mic")
                    Text("음성전송")
                  }.foregroundColor(.black)
                    .frame(width:100,height:34)
                    .overlay(
                      RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: 1)
                  )
              }
          }
          Spacer().padding(.top, 7)

        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 106, maxHeight: 106).padding([.leading,.trailing], 14)
        .background(Color(red: 249/255, green: 249/255, blue: 249/255))
        VStack{
          Spacer().frame(height:40)
          VStack {
            VStack{
              Image("clova")
                .resizable()
                .frame(width:140, height: 200)
              HStack{
                Image(systemName: "bolt.fill")
                Image(systemName: "battery.100")
                Text("100%")
                  .font(.system(size: 16))
                  .fontWeight(.bold)
              }.foregroundColor(.green)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            }
          }
          Spacer().frame(height:40)
          HStack(spacing: 0) {
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
              }.frame(minWidth: 0, maxWidth: .infinity)
            }.frame(minWidth: 0, maxWidth: .infinity)
          }.frame(minWidth: 0, maxWidth: .infinity)
          Spacer().frame(height:20)
          HStack {
            Image(systemName: "volume.fill")
              .padding(.trailing, 8)
            Slider(value: $sliderValue, in: minimumValue...maximumvalue)
            Image(systemName: "volume.3.fill")
              .padding(.leading, 8)
          }.padding([.leading,.trailing], 24)
          Spacer().frame(height:60)
        }.background(Color(red: 249/255, green: 249/255, blue: 249/255))
        
        
        VStack{
          ForEach(settingSection0, id: \.self) { data in
            DeviceRow(title: data)
          }
        }.padding([.leading,.trailing], 16)
        Divider()
        VStack{
          ForEach(settingSection1, id: \.self) { data in
            DeviceRow(title: data)
          }
        }.padding([.leading,.trailing], 16)
        Divider()
        HStack(spacing:40) {
          Text("제품 홈페이지")
          Text("고객지원")
        }.padding(.top, 24).padding(.bottom,48)
        VStack(alignment: .leading) {
          Text("배너위치")
            .font(.title)
          Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 124, maxHeight: 124 ,alignment: .topLeading)
        .background(Color.red)
      }
  }
}

struct DeviceView_Previews: PreviewProvider {
  static var previews: some View {
    DeviceView()
  }
}
