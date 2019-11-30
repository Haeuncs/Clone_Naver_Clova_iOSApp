//
//  MultilineTextView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/30.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct TextView: UIViewRepresentable {
  @Binding var text: String
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  func makeUIView(context: Context) -> UITextView {
    
    let myTextView = UITextView()
    myTextView.delegate = context.coordinator
    
    myTextView.font = UIFont.systemFont(ofSize: 25, weight: .regular)
    myTextView.isScrollEnabled = true
    myTextView.isEditable = true
    myTextView.isUserInteractionEnabled = true
    myTextView.backgroundColor = .white
    return myTextView
  }
  
  func updateUIView(_ uiView: UITextView, context: Context) {
    uiView.text = text
  }
  
  class Coordinator : NSObject, UITextViewDelegate {
    
    var parent: TextView
    
    init(_ uiTextView: TextView) {
      self.parent = uiTextView
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
      return true
    }
    
    func textViewDidChange(_ textView: UITextView) {
      print("text now: \(String(describing: textView.text!))")
      self.parent.text = textView.text
    }
  }
}
