//
//  FriendsListTableViewCell.swift
//  easyPay
//
//  Created by Jingyu Wang on 10/24/17.
//  Copyright © 2017 Jingyu Wang. All rights reserved.
//

import UIKit

class FriendsListTableViewCell: UITableViewCell {
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
