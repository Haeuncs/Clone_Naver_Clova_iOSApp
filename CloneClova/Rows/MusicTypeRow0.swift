//
//  MusicTypeRow0.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/29.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI
import URLImage

struct MusicTypeRow0: View {
  var data: data
  init(_ data: data) {
    self.data = data
  }
  var body: some View {
    HStack{
      VStack(alignment: .leading){
        Text(data.track.album.name)
          .font(.system(size: 19))
          .fontWeight(.semibold)
        URLImage(URL(string: data.track.album.images.first!.url)!) { proxy in
          proxy.image
            .resizable()                     // Make image resizable
            .aspectRatio(contentMode: .fill) // Fill the frame
            .clipped()                       // Clip overlaping parts
        }
        .cornerRadius(12)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      }
    }
    //      .frame(width: 100.0, height: 100.0)  // Set frame to 100x100.
  }
}

struct MusicTypeRow0_Previews: PreviewProvider {
  static var previews: some View {
    MusicTypeRow0(data(track: track(album: album(artists: [artists(name: "test")], images: [images(height: 300, url: "test")], name: "제목 들어가는 곳"))))
  }
}
