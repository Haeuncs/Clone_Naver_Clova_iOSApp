//
//  NavBarView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/23.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct NavBarView: View {
  var body: some View {
    NavigationView {
      Text("SwiftUI")
        .navigationBarTitle("Welcome")
    }
  }
}

struct NavBarView_Previews: PreviewProvider {
  static var previews: some View {
    NavBarView()
  }
}
