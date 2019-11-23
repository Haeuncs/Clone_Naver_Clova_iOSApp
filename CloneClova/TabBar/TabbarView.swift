//
//  TabbarView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/23.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct TabbarView: View {
  var body: some View {
    TabView {
      HomeView()
        .tabItem {
          Image(systemName: "1.circle")
          Text("홈")
      }.tag(0)
      Text("Second View")
        .tabItem {
          Image(systemName: "2.circle")
          Text("뮤직")
      }.tag(1)
      Text("Second View")
        .tabItem {
          Image(systemName: "3.circle")
          Text("마이")
      }.tag(1)
        SmartHomeView()
        .tabItem {
          Image(systemName: "4.circle")
          Text("스마트홈")
      }.tag(1)
      Text("Second View")
        .tabItem {
          Image(systemName: "5.circle")
          Text("디바이스")
      }.tag(1)
    }
  }
}

struct TabbarView_Previews: PreviewProvider {
  static var previews: some View {
    TabbarView()
  }
}
