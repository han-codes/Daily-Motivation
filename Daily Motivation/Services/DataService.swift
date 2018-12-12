//
//  DataService.swift
//  Daily Motivation
//
//  Created by Hannie Kim on 12/9/18.
//  Copyright © 2018 Hannie Kim. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "Discipline", imageName: "shirts.png"),
        Category(title: "Faith", imageName: "hoodies.png"),
        Category(title: "Love", imageName: "hats.png"),
        Category(title: "Programming", imageName: "digital.png")
    ]
    
    private let disciplineVideos = [
        Video(creatorText: "Jocko Willink", imageName: "shirts.png", videoURL: "RmHqOSrkZnk"),
        Video(creatorText: "Will Smith", imageName: "hoodies.png", videoURL: "RmHqOSrkZnk")
    ]
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getVideos(forCategoryTitle title: String) -> [Video]{
        switch title {
        case "Discipline":
            return getDisciplineVideos()
        default:
            return getDisciplineVideos()
        }
        
    }
    
    func getDisciplineVideos() -> [Video]{
        return disciplineVideos
    }
}
