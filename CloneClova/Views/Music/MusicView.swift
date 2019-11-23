//
//  MusicView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/24.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct MusicView: View {
  var body: some View {
    NavigationView {
      ZStack {
        Text("SwiftUI")
        VStack{
          Spacer()
          HStack {
            Spacer()
            Image(systemName: "mic.circle.fill").resizable().frame(width: 56, height: 56, alignment: .center).foregroundColor(.green).shadow(color: Color(.black).opacity(0.35), radius: 2, x: 0, y: 3).padding(.bottom, 10)
          }
        }

      }.padding([.leading,.trailing], 20)
      .navigationBarTitle("뮤직")
      }
  }
}

struct MusicView_Previews: PreviewProvider {
  static var previews: some View {
    MusicView()
  }
}
