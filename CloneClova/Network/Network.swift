//
//  Network.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/28.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import Foundation
import Alamofire

class Network {
//  private let manager = Alamofire.SessionManager.defaults
  
  //MARK: GET Function
  func get(function name: String, url: ServerUrl, header: HTTPHeaders? = nil, param: Parameters? = nil) {
    
    guard let fullURL = URL(string: url.rawValue) else {
//      self.networkResult(function: name)
      return
    }
    
    Alamofire.request(fullURL, method: .get, parameters: param, headers: header).responseJSON { (response) in
      switch response.result {
      case .success(let item):
        if let dic = item as? NSDictionary {
//          let code = dic["code"] as? String ?? "0"
//          self.networkResult(function: name, code: code, item: item)
        }
        else {
//          self.networkResult(function: name, code: "0", item: nil)
        }
      case .failure(let error):
        print(error)
//        self.networkResult(function: name, code: "NetworkErr", item: nil)
      }
    }
    
  }
}
