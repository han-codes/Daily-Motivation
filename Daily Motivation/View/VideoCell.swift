//
//  VideoCell.swift
//  Daily Motivation
//
//  Created by Hannie Kim on 12/9/18.
//  Copyright © 2018 Hannie Kim. All rights reserved.
//

import UIKit
import WebKit

class VideoCell: UICollectionViewCell {
    @IBOutlet weak var creatorLbl: UILabel!
    @IBOutlet weak var webView: WKWebView!
    
    func updateViews(video: Video) {
        creatorLbl.text = video.creatorText
        let url = URL(string: "https://www.youtube.com\(video.videoURL)")
        webView.load(URLRequest(url: url!))
    }
}
