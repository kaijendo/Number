//
//  ListNumbersCell.swift
//  Number
//
//  Created by Kai Jendo on 7/13/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import UIKit

class ListNumbersCell: UITableViewCell {

    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var lblCreated: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
