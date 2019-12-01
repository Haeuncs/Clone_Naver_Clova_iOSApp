//
//  TextViewData.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/12/01.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI
import Combine


final class TextViewData: ObservableObject  {
  let didChange = PassthroughSubject<TextViewData, Never>()
  
  var text = "" {
    didSet {
      didChange.send(self)
    }
  }
  
  
  init(text: String) {
    self.text = text
  }
  
  func reset(){
    text = ""
  }
}
