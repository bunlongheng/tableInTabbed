//
//  ViewControllerTableViewCell.swift
//  tableInTabbed
//
//  Created by Bunlong Heng on 7/30/18.
//  Copyright © 2018 LR Web Design. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var profileName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
