//
//  UIApplication.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/12/01.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
