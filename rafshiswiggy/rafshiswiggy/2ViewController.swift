//
//  2ViewController.swift
//  rafshiswiggy
//
//  Created by SREEHARI MOHAN on 05/10/23.
//

import UIKit

class _ViewController: UIViewController {
    
    
    @IBOutlet weak var pricelab: UILabel!
    var p = ""
    
    @IBOutlet weak var img: UIImageView!
    var im = ""
    
    
    
    @IBOutlet weak var fud: UILabel!
    var fudtext = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pricelab.text = p
        img.image = UIImage(named: im)
        fud.text = fudtext
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
