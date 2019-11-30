//
//  MemoData.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/30.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import Combine
import SwiftUI

class MemoData: ObservableObject {
  
  @Published var memos: [Memo]? = nil

//  private var memosDefault: [Memo]?
  
  init(){
    memos = getMemo()
  }
  
  func isEmpty() -> Bool {
    if (memos == nil) {
      return true
    }else{
      return false
    }
  }
  func getMemo() -> [Memo]?{
    
    guard let data = UserDefaults.standard.data(forKey: "Memos") else {
      return nil
    }
    let stores = try? JSONDecoder().decode([Memo].self, from: data)
    return stores
  }
  
  func updateMemo(memo: Memo) {
    guard var newMemo = self.memos else {
      self.memos = [memo]
      let data = try? JSONEncoder().encode(memos)
      UserDefaults.standard.set(data, forKey: "Memos")
      return
    }
    newMemo.insert(memo, at: 0)
    let data = try? JSONEncoder().encode(newMemo)
    UserDefaults.standard.set(data, forKey: "Memos")
    print(memos)
    print(getMemo())
  }
}
