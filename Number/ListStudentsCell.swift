//
//  ListStudentsCell.swift
//  Number
//
//  Created by Kai Jendo on 7/11/17.
//  Copyright © 2017 Kai Jendo. All rights reserved.
//

import UIKit

class ListStudentsCell: UITableViewCell {
    
    /// IBOutlets
    @IBOutlet weak var sImage: UIImageView!
    @IBOutlet weak var sName: UILabel!
    @IBOutlet weak var sPhone: UILabel!
    @IBOutlet weak var sClass: UILabel!
    @IBOutlet weak var lblCount: UILabel!
    @IBOutlet weak var lblCreate: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
