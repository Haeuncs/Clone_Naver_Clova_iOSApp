//
//  Model.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/28.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import Foundation

class MusicFetcher: ObservableObject {
  @Published var musics = [data]()
  init() {
    getMusic()
  }
  func getMusic(){
    if let path = Bundle.main.path(forResource: "MusicData", ofType: "json") {
      do {
        let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
        let result = try JSONDecoder().decode(MusicTracks.self, from: data)
//        print(result.data)
        musics = result.data
//        let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
//        if let jsonResult = jsonResult as? Dictionary<String, AnyObject>, let data = jsonResult["data"] as? [Any] {
//          print(jsonResult)
//        }
        // do stuff
      } catch let error as NSError {
        print("Error: \(error)")
      }
    }
  }
}
struct MusicTracks: Codable {
  let data: [data]
}
struct data: Codable {
  let track: track
}
struct track: Codable {
  let album: album
}
struct album: Codable {
  let artists: [artists]
  let images: [images]
  let name: String
}
struct artists: Codable {
  let name: String
}
struct images: Codable {
  let height: Int
  let url: String
}
