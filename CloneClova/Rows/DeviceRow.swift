//
//  DeviceRow.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/24.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct DeviceRow: View {
  var title: String
  var body: some View {
    HStack {
      Text(title).font(.system(size: 20))
      Spacer()
      Image(systemName: "chevron.right").resizable().frame(width:10, height:20).aspectRatio(contentMode: .fit)
    }.frame(height:70)
  }
}

struct DeviceRow_Previews: PreviewProvider {
  static var previews: some View {
    DeviceRow(title: "텍스트")
  }
}
