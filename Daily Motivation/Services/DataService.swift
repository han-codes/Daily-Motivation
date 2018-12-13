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
        Category(title: "Worship", imageName: "hats.png"),
        Category(title: "Programming", imageName: "digital.png")
    ]
    
    private let disciplineVideos = [
        Video(creatorText: "Jocko Willink", videoURL: "/channel/UCkqcY4CAuBFNFho6JgygCnA"),
        Video(creatorText: "Will Smith", videoURL: "/channel/UCKuHFYu3smtrl2AwwMOXOlg")
    ]
    
    private let faithVideos = [
        Video(creatorText: "Radical", videoURL: "/user/ViewRadical/featured")
    ]
    
    private let worshipVideos = [
        Video(creatorText: "Hillsong UNITED", videoURL: "/channel/UCsOoQeBWPnfWBYAwmO795zg")
    ]
    
    private let programmingVideos = [
        Video(creatorText: "Traversy Media", videoURL: "/user/TechGuyWeb")
    ]
    
    func getVideos(forCategoryTitle title: String) -> [Video]{
        switch title {
        case "Discipline":
            return getDisciplineVideos()
        case "Faith":
            return getFaithVideos()
        case "Worship":
            return getWorshipVideos()
        case "Programming":
            return getProgrammingVideos()
        default:
            return getDisciplineVideos()
        }
        
    }
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getDisciplineVideos() -> [Video] {
        return disciplineVideos
    }
    
    func getFaithVideos() -> [Video] {
        return faithVideos
    }
    
    func getWorshipVideos() -> [Video] {
        return worshipVideos
    }
    
    func getProgrammingVideos() -> [Video] {
        return programmingVideos
    }
}
