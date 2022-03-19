//
//  Video.swift
//  Africa
//
//  Created by Visarut Tippun on 19/3/22.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
}

extension Video {
    var thumbnail: String {
        return "video-\(id)"
    }
}
