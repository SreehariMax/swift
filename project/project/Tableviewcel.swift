//
//  Tableviewcel.swift
//  project
//
//  Created by SREEHARI MOHAN on 05/10/23.
//

import UIKit

class Tableviewcel: UITableViewCell {

    @IBOutlet weak var iu: UILabel!
    
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
