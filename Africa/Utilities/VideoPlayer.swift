//
//  VideoPlayer.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer? {
    if let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat) {
        videoPlayer = .init(url: url)
        videoPlayer?.play()
    }
    return videoPlayer
}
