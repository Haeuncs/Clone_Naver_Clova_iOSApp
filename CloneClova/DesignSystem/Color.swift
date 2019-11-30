//
//  Color.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/26.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

extension Color {
  static let custom = Custom()
}
struct Custom {
  let theme: Color  =
    Color(#colorLiteral(red: 0, green: 0.7807805538, blue: 0.5183060765, alpha: 1))
  let blue = Color(#colorLiteral(red: 0, green: 0.5707012415, blue: 0.854904592, alpha: 1))
  let grey: Color = Color(#colorLiteral(red: 0.8234594464, green: 0.8235757947, blue: 0.8234228492, alpha: 1))
  let lightGray = Color(#colorLiteral(red: 0.9795153737, green: 0.9844812751, blue: 0.9885724187, alpha: 1))
  let grayBlue: Color = Color(#colorLiteral(red: 0.6240505576, green: 0.6708018184, blue: 0.7822362185, alpha: 1))
  
}
