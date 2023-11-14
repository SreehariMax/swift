//
//  TableViewCell.swift
//  ApiPractice
//
//  Created by SREEHARI MOHAN on 09/11/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var bookImage: UIImageView!
   
    @IBOutlet weak var authorLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var titleLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
