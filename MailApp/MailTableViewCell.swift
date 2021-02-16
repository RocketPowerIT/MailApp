//
//  MailTableViewCell.swift
//  MailApp
//
//  Created by wolfyteze on 16/02/2021.
//  Copyright © 2021 wolfyteze. All rights reserved.
//

import UIKit

class MailTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
