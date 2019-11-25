//
//  TabbarView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/23.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct TabbarView: View {
  @State private var isSHowMic = false
  var body: some View {
    ZStack {
      TabView {
        HomeView(showingModal: $isSHowMic)
          .tabItem {
            Image(systemName: "1.circle")
            Text("홈")
        }.tag(0)
        MusicView(showingModal: $isSHowMic)
          .tabItem {
            Image(systemName: "2.circle")
            Text("뮤직")
        }.tag(1)
        MyView(showingModal: $isSHowMic)
          .tabItem {
            Image(systemName: "3.circle")
            Text("마이")
        }.tag(2)
        SmartHomeView(showingModal: $isSHowMic)
          .tabItem {
            Image(systemName: "4.circle")
            Text("스마트홈")
        }.tag(3)
        DeviceView()
          .tabItem {
            Image(systemName: "5.circle")
            Text("디바이스")
        }.tag(4)
      }
      speakView(showingModal: $isSHowMic)
    }
  }
}

struct TabbarView_Previews: PreviewProvider {
  static var previews: some View {
    TabbarView()
  }
}
