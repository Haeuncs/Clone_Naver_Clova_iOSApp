//
//  MusicView.swift
//  CloneClova
//
//  Created by LEE HAEUN on 2019/11/24.
//  Copyright © 2019 LEE HAEUN. All rights reserved.
//

import SwiftUI

struct MusicView: View {
  @Binding var showingModal: Bool
  @ObservedObject var fetcher = MusicFetcher()
  
  var body: some View {
    NavigationView {
      ZStack {
        ScrollView {
          VStack{
            ScrollView(.horizontal, showsIndicators: false, content: {
              HStack(spacing: 10){
                ForEach(Array(fetcher.musics[0..<4]), id: \.track.album.name) { musicData in
                  MusicTypeRow0(musicData).frame(width: 335, height: 370 , alignment: .leading)
                }
              }.padding(.horizontal, 15)
            })
              .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
            Spacer().frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .topLeading)
            
            HStack(spacing: 10){
              ForEach(Array(fetcher.musics[4..<5]), id: \.track.album.name) { musicData in
                MusicTypeRow1(musicData).frame(width: 335, height: 370 , alignment: .leading)
              }
            }.padding(.horizontal, 15)
            
            VStack(alignment: .leading) {
              Text("배너위치")
                .font(.title)
              Spacer()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 124, maxHeight: 124 ,alignment: .topLeading)
            .background(Color.red)
            Spacer().frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .topLeading)
            
            VStack(alignment:.leading){
              Text("일간 차트")
                .font(.system(size: 19))
                .fontWeight(.semibold)
                .padding(.leading, 15)
              ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 10){
                  VStack{
                    ForEach(Array(fetcher.musics[10..<15]), id: \.track.album.name) { musicData in
                      MusicTypeRow2(musicData).frame(minWidth: 330, maxWidth: 330, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                    }
                  }
                  VStack{
                    ForEach(Array(fetcher.musics[15..<20]), id: \.track.album.name) { musicData in
                      MusicTypeRow2(musicData).frame(minWidth: 330, maxWidth: 330, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                    }
                  }
                  Spacer().frame(minWidth: 5, maxWidth: 5, minHeight: 50, maxHeight: 50, alignment: .trailing)
                  
                }
                .padding(.horizontal, 15)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                
              })
                
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
            }
            Spacer().frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .topLeading)
            
            VStack(alignment:.leading){
              Text("최근 요청한 음악")
                .font(.system(size: 19))
                .fontWeight(.semibold)
                .padding(.leading, 15)
              ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 10){
                  VStack{
                    ForEach(Array(fetcher.musics[15..<20]), id: \.track.album.name) { musicData in
                      MusicTypeRow2(musicData).frame(minWidth: 330, maxWidth: 330, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                    }
                  }
                  VStack{
                    ForEach(Array(fetcher.musics[20..<25]), id: \.track.album.name) { musicData in
                      MusicTypeRow2(musicData).frame(minWidth: 330, maxWidth: 330, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                    }
                  }
                  Spacer().frame(minWidth: 5, maxWidth: 5, minHeight: 50, maxHeight: 50, alignment: .trailing)
                  
                }
                .padding(.horizontal, 15)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                
              })
                
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
            }
            Spacer().frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .topLeading)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
              HStack(spacing: 10){
                ForEach(Array(fetcher.musics[25..<30]), id: \.track.album.name) { musicData in
                  MusicTypeRow1(musicData).frame(width: 162, height: 234 , alignment: .leading)
                }
              }.padding(.horizontal, 15)
            })
          }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        VStack{
          Spacer()
          HStack {
            Spacer()
            Button(action: {
              self.showingModal.toggle()
            }) {
              Image(systemName: "mic.circle.fill").resizable().frame(width: 56, height: 56, alignment: .center)
                .background(Color.white).cornerRadius(56/2)
                .foregroundColor(Color.custom.theme)
                .shadow(color: Color(.black).opacity(0.35), radius: 2, x: 0, y: 3).padding(.bottom, 10)
            }
          }
        }.padding([.leading,.trailing], 20)
        
      }
      .navigationBarTitle("뮤직")
    }
  }
}

struct MusicView_Previews: PreviewProvider {
  static var previews: some View {
    MusicView(showingModal: .constant(false))
  }
}
