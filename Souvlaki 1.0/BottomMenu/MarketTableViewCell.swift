//
//  MarketTableViewCell.swift
//  Souvlaki 1.0
//
//  Created by DJL on 21/08/2018.
//  Copyright © 2018 apptouch. All rights reserved.
//

import UIKit

class MarketTableViewCell: UITableViewCell {
    
    @IBOutlet weak var MarketImage: UIImageView!
    @IBOutlet weak var MarketName: UILabel!
    @IBOutlet weak var MarketDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
