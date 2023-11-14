//
//  myTableViewCell.swift
//  api_parsing_exam
//
//  Created by SREEHARI MOHAN on 09/11/23.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var titleBook: UILabel!
    @IBOutlet weak var authorBook: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
