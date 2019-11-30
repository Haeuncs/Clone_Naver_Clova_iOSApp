//
//  BlurView.swift
//  DesignCode
//
//  Created by Mithun x on 7/14/19.
//  Copyright © 2019 Mithun. All rights reserved.
//

import UIKit
import SwiftUI

struct BlurView: UIViewRepresentable {
  
  //  @Binding var isShowMode: Bool
  var tappedCallback: ((Bool) -> Void)
  let style: UIBlurEffect.Style
  
  func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
    let view = UIView(frame: .zero)
    view.backgroundColor = .clear
    let blurEffect = UIBlurEffect(style: style)
    let blurView = UIVisualEffectView(effect: blurEffect)
    blurView.translatesAutoresizingMaskIntoConstraints = false
    view.insertSubview(blurView, at: 0)
    let gesture = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.tapped))
    blurView.addGestureRecognizer(gesture)
    NSLayoutConstraint.activate([
      blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
      blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
    ])
    return view
  }
  
  func updateUIView(_ uiView: UIView,
                    context: UIViewRepresentableContext<BlurView>) {}
  
  func makeCoordinator() -> BlurView.Coordinator {
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
