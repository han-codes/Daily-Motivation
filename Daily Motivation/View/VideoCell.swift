//
//  VideoCell.swift
//  Daily Motivation
//
//  Created by Hannie Kim on 12/9/18.
//  Copyright © 2018 Hannie Kim. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {
    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var creatorLbl: UILabel!
    
    func updateViews(video: Video) {
        videoImage.image = UIImage(named: video.imageName)
        creatorLbl.text = video.creatorText
    }
}
