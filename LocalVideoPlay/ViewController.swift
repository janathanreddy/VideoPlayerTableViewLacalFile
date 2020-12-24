//
//  ViewController.swift
//  LocalVideoPlay
//
//  Created by Janarthan Subburaj on 24/12/20.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var videos:[Video] = Video.fetchVideos()
    var player = AVPlayer()
    var playerViewController = AVPlayerViewController()
    var imagetemp:[String] = ["image1.png","image2.png","image3.png","image4.png","image5.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let VideoCell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! TableViewCell
        let video = videos[indexPath.row]
        VideoCell.video = video
        VideoCell.ImageCell.image = UIImage(named: imagetemp[indexPath.row])

        return VideoCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        playVideo(at: indexPath)
    }
    func playVideo(at indexPath: IndexPath) {
        let SelectedVideo = videos[indexPath.row]
        let VideoPath = Bundle.main.path(forResource: SelectedVideo.VideoFileName, ofType: "mp4")
        let VideoPathUrl = URL(fileURLWithPath: "\(VideoPath!)")
        player = AVPlayer(url: VideoPathUrl)
        playerViewController.player = player
        self.present(playerViewController, animated: true, completion: {
            self.playerViewController.player?.play()

        })
    }
}

