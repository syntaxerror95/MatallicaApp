//
//  VideoTableViewCell.swift
//  FanApp
//
//  Created by Sahadev Tandur on 22/08/17.
//  Copyright © 2017 Sahadev Tandur. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var VideoPreviewImage: UIImageView!
    
    @IBOutlet weak var VideoTitleLb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func UpdateUI(ce : Cell) {
        VideoTitleLb.text = ce.TitleURL
        
        let url = URL(string: ce.ImageURL)!
        DispatchQueue.global().async {
            do{
                let dt = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                 self.VideoPreviewImage.image = UIImage(data: dt)
                }
            }catch
            {
                
            }
        }
    
        
        }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
