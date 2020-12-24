//
//  video.swift
//  LocalVideoPlay
//
//  Created by Janarthan Subburaj on 24/12/20.
//

import Foundation
struct Video {
    let AuthorName: String
    let VideoFileName: String
    let descrition: String
    let thumbnailFileName: String
    static func fetchVideos() -> [Video]{
        let Video1 = Video(AuthorName: "Sharp Sound",VideoFileName: "Video1",descrition: "Test1",thumbnailFileName: "Video1.jpg")
        let Video2 = Video(AuthorName: "Skat",VideoFileName: "Video2",descrition: "Test2",thumbnailFileName: "Video2.jpg")
        let Video3 = Video(AuthorName: "Trek",VideoFileName: "Video3",descrition: "Test3",thumbnailFileName: "Video3.jpg")
        let Video4 = Video(AuthorName: "Run",VideoFileName: "Video4",descrition: "Test4",thumbnailFileName: "Video4.jpg")
        let Video5 = Video(AuthorName: "Gym",VideoFileName: "Video5",descrition: "Test5",thumbnailFileName: "Video5.jpg")
        return [Video1,Video2,Video3,Video4,Video5]
    }
}
