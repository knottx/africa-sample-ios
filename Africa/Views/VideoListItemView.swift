//
//  VideoListItemView.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI

struct VideoListItemView: View {
    
    let video: Video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } //: ZStack
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            } //: VStack
        } //: HStack
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static let videos = AppData.videos
    
    static var previews: some View {
        VideoListItemView(video: videos.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
