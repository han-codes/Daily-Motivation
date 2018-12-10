//
//  VideoVC.swift
//  Daily Motivation
//
//  Created by Hannie Kim on 12/9/18.
//  Copyright © 2018 Hannie Kim. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    private(set) public var video = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func initVideos(category: Category) {
        video = DataService.instance.getVideos(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    // TODO: Click on video to open up YouTube video
    @IBAction func videoTapped(_ sender: Any) {
        
    }
    
}
