//
//  DeviceStateRow.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/24.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct DeviceStateRow: View {
  var body: some View {
    VStack{
      HStack {
        Image(systemName: "moon")
          .resizable().frame(width: 30,height:30)
          .foregroundColor(.white)
      }.frame(width: 70, height: 70, alignment: .center)
        .background(Color(red: 246 / 255, green: 89 / 255, blue: 113 / 255))
        .cornerRadius(70/2)
      Text("방해금지")
        .font(.system(size: 13))
        .foregroundColor(.gray)
    }.frame(minWidth: 0, maxWidth: 70, alignment: .leading)
  }
}

struct DeviceStateRow_Previews: PreviewProvider {
  static var previews: some View {
    DeviceStateRow()
  }
}
