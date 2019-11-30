//
//  Memo.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/30.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct Memo: Identifiable, Codable, Equatable, Hashable {
  let id: UUID
  var title: String
  var date: Date
  
  init(title: String) {
    self.id = UUID()
    self.title = title
    self.date = Date()
  }
  
}
