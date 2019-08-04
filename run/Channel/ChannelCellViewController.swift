//
//  ChannelCellViewController.swift
//  run
//
//  Created by Ha-koichi on 2019/08/04.
//  Copyright © 2019 Ha-koichi. All rights reserved.
//

import UIKit

class ChannelCellViewController: UITableViewCell {

    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postName: UILabel!
    @IBOutlet weak var postDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
