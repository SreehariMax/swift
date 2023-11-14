//
//  myTableViewCell.swift
//  rafshiswiggy
//
//  Created by SREEHARI MOHAN on 05/10/23.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var img1: UIImageView!
    
    
    @IBOutlet weak var lab1: UILabel!
    
    
    
    @IBOutlet weak var lab2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
