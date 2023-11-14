//
//  ViewController.swift
//  rafshiswiggy
//
//  Created by SREEHARI MOHAN on 05/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var PriceList = ["810","910"]
    
    var Food = ["MacBurger","JumboBurger"]
    
    var Image = ["burger","burger2"]

    @IBOutlet weak var mytable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mytable.dataSource = self
        mytable.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PriceList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell1 = mytable.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        as! myTableViewCell
        
        cell1.lab2.text = PriceList[indexPath.row]
        cell1.lab1.text = Food[indexPath.row]
        cell1.img1.image = UIImage(named: Image[indexPath.row])
        return cell1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = self.storyboard?.instantiateViewController(identifier: "sv")as! _ViewController
        
        VC.p = PriceList[indexPath.row]
        VC.im = Image[indexPath.row]
        VC.fudtext = Food[indexPath.row]
        
        present(VC,animated: true,completion: .none)
    }


}

