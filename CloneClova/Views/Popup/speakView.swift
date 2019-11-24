//
//  speakView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/24.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct speakView: View {
  
  @Binding var showingModal: Bool

//  init(_ visible: Binding<Bool>) {
//    self.showingModal = visible.wrappedValue
//  }
  var body: some View {
    ZStack {
      // The Custom Popup is on top of the screen
//      if $showingModal.wrappedValue {
        // But it will not show unless this variable is true
        ZStack {
          Spacer()
          HStack{
            Color.black.opacity(0.4)
              .edgesIgnoringSafeArea(.vertical)
          }
          
          VStack{
            Spacer()
            VStack(alignment: .leading) {
              Text("듣고 있어요")
                .foregroundColor(.green)
              .font(.system(size: 20))
              .fontWeight(.bold)
                .padding(.top,11)
                .padding(.leading,16)
              ZStack {
                Button(action: {
                  
                }){
                  Circle().frame(width: 110,height:110).foregroundColor(Color.green)
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 324, alignment: .center)
                .padding(.bottom,50)
                HStack {
                  Button(action: {
                    self.showingModal = false
                  }){
                    Image(systemName: "multiply")
                      .resizable()
                      .frame(width:20,height:20)
                    .foregroundColor(.black)
                  }
                  Spacer()
                  Image(systemName: "keyboard")
                    .resizable().frame(width:30,height:20)
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 324 ,alignment: .bottom)
                  .padding([.leading,.trailing], 16)
                  .padding(.bottom,50)
              }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 324 ,alignment: .topLeading)
            .background(Color.white)
          }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
        .edgesIgnoringSafeArea(.all)
//      }
    }
  }
}

struct speakView_Previews: PreviewProvider {
  static var previews: some View {
    speakView(showingModal: .constant(false))
  }
}
