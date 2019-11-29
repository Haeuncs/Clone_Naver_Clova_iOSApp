//
//  MusicTypeRow2.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/29.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI
import URLImage
struct MusicTypeRow2: View {
  var data: data
  init(_ data: data) {
    self.data = data
  }
  
  var body: some View {
    HStack{
      URLImage(URL(string: data.track.album.images.first!.url)!) { proxy in
        proxy.image
          .resizable()                     // Make image resizable
          .aspectRatio(contentMode: .fill) // Fill the frame
          .clipped()                       // Clip overlaping parts
      }
      .cornerRadius(5)
      .frame(minWidth: 52, maxWidth: 52, minHeight: 52, maxHeight: 52)
      Text("1").frame(minWidth: 45, maxWidth: 45, minHeight: 45, maxHeight: 45)
      VStack{
        Text(data.track.album.name)
          .font(.system(size: 16))
          .fontWeight(.semibold)
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
        Text(data.track.album.artists.first?.name ?? "")
          .foregroundColor(Color.custom.grey)
          .font(.system(size: 12))
          .fontWeight(.regular)
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
    }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 52, maxHeight: 52)
  }
}

struct MusicTypeRow2_Previews: PreviewProvider {
  static var previews: some View {
    MusicTypeRow2(data(track: track(album: album(artists: [artists(name: "test")], images: [images(height: 300, url: "test")], name: "제목 들어가는 곳"))))
  }
}
