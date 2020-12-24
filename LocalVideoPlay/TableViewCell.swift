//
//  TableViewCell.swift
//  LocalVideoPlay
//
//  Created by Janarthan Subburaj on 24/12/20.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var ImageCell: UIImageView!
    @IBOutlet weak var ImageLabel: UILabel!
    var video: Video!{
        didSet{
            updateUI()
        }
    }

    func updateUI(){
        ImageCell.image = UIImage(named: video.thumbnailFileName)
        ImageCell.layer.cornerRadius = 8.0
        ImageCell.layer.masksToBounds = true
        ImageLabel.text = video.AuthorName
        
    }
}
