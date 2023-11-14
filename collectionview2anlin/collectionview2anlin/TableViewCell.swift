//
//  TableViewCell.swift
//  collectionview2anlin
//
//  Created by SREEHARI MOHAN on 18/10/23.
//

import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource{
    

    @IBOutlet weak var collection: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }

}
