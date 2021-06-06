//
//  VideoPlayerView.swift
//  AfricaApp
//
//  Created by Apple on 5/16/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
//        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!))
        
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
                // Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        } // VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
 
