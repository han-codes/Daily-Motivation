//
//  VideoVC.swift
//  Daily Motivation
//
//  Created by Hannie Kim on 12/9/18.
//  Copyright © 2018 Hannie Kim. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var videoCollection: UICollectionView!
    
    private(set) public var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func initVideos(category: Category) {
        videos = DataService.instance.getVideos(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    // TODO: Click on video to open up YouTube video
    @IBAction func videoTapped(_ sender: Any) {
        
    }
    
}

extension VideoVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideoCell", for: indexPath) as? VideoCell {
            let video = videos[indexPath.row]
            cell.updateViews(video: video)
            
            return cell
        }
        
        return VideoCell()
    }
    
    
}
