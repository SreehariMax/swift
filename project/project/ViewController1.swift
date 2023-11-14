//
//  ViewController1.swift
//  project
//
//  Created by SREEHARI MOHAN on 05/10/23.
//

import UIKit

class ViewController1: UIViewController {
    
    var name = ""
    var img2 = ""

    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var lab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lab.text = name
        img1.image = UIImage(named: img2)
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
