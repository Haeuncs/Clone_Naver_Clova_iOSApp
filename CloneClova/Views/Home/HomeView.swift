//
//  HomeView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/23.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    ZStack {
      VStack(alignment: .leading, spacing: .none, content: {
        HStack(alignment: .firstTextBaseline, spacing: .none, content: {
          Text("Clova").bold()
          Spacer()
          HStack {
            Image(systemName: "info.circle").resizable().frame(width: 24, height: 24, alignment: .center).padding(.trailing, 20)
            Image(systemName: "gear").resizable().frame(width: 24, height: 24, alignment: .center)
          }
        })
        //      Spacer()
        VStack{
          Spacer()
          HStack {
            Spacer()
            Image(systemName: "mic.circle.fill")
              .resizable().frame(width: 56, height: 56, alignment: .center)
              .foregroundColor(.green).shadow(color: Color(.black).opacity(0.35), radius: 2, x: 0, y: 3).padding(.bottom, 10)
          }
        }
      })
      
    }.padding([.leading,.trailing], 20)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
