//
//  userViewController.swift
//  facebook
//
//  Created by SREEHARI MOHAN on 04/10/23.
//

import UIKit

class userViewController: UIViewController {
    
    
    var txt1 = ""
    var txt2 = ""
    var image1 = ""
    

    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = txt1
        image2.image = UIImage(named: image1)
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
