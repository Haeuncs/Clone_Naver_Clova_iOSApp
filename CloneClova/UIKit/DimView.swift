//
//  DimView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/12/01.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import UIKit
import SwiftUI

struct DimView: UIViewRepresentable {
  
  //  @Binding var isShowMode: Bool
  var tappedCallback: ((Bool) -> Void)
  let style: UIBlurEffect.Style
  
  func makeUIView(context: UIViewRepresentableContext<DimView>) -> UIView {
    let view = UIView(frame: .zero)
    view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.46)
//    let blurEffect = UIBlurEffect(style: style)
//    let blurView = UIVisualEffectView(effect: blurEffect)
//    blurView.translatesAutoresizingMaskIntoConstraints = false
//    view.insertSubview(blurView, at: 0)
    let gesture = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.tapped))
    view.addGestureRecognizer(gesture)
//    NSLayoutConstraint.activate([
//      blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
//      blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
//    ])
    return view
  }
  
  func updateUIView(_ uiView: UIView,
                    context: UIViewRepresentableContext<DimView>) {}
  
  func makeCoordinator() -> DimView.Coordinator {
    return Coordinator(tappedCallback:self.tappedCallback)
  }
  
  class Coordinator: NSObject {
    var tappedCallback: ((Bool) -> Void)
    init(tappedCallback: @escaping ((Bool) -> Void)) {
      self.tappedCallback = tappedCallback
    }
    @objc func tapped(gesture:UITapGestureRecognizer) {
      self.tappedCallback(true)
    }
  }
}
