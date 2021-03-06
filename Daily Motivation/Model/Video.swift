//
//  Video.swift
//  Daily Motivation
//
//  Created by Hannie Kim on 12/9/18.
//  Copyright © 2018 Hannie Kim. All rights reserved.
//

import Foundation

struct Video {
    private(set) public var creatorText: String
    private(set) public var videoURL: String
    
    init(creatorText: String, videoURL: String) {
        self.creatorText = creatorText
        self.videoURL = videoURL
    }
}
