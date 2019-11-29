//
//  MusicTypeRow1.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/29.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI
import URLImage

struct MusicTypeRow1: View {
  var data: data
  init(_ data: data) {
    self.data = data
  }
  var body: some View {
    VStack(alignment: .leading){
      Text(data.track.album.name)
        .font(.system(size: 19))
        .fontWeight(.semibold)
        .lineLimit(1)
      URLImage(URL(string: data.track.album.images.first!.url)!) { proxy in
        proxy.image
          .resizable()                     // Make image resizable
          .aspectRatio(contentMode: .fill) // Fill the frame
          .clipped()                       // Clip overlaping parts
      }
      .cornerRadius(10)
      .frame(minWidth: 162, maxWidth: 162, minHeight: 162, maxHeight: 162, alignment: .leading)
      Text(data.track.album.artists.first!.name)
        .font(.system(size: 16))
        .fontWeight(.semibold)
        .lineLimit(1)
    }.frame(alignment: .leading)
  }
}

struct MusicTypeRow1_Previews: PreviewProvider {
  static var previews: some View {
    MusicTypeRow1(data(track: track(album: album(artists: [artists(name: "test")], images: [images(height: 300, url: "test")], name: "제목 들어가는 곳"))))
  }
}
