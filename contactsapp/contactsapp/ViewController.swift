//
//  ViewController.swift
//  contactsapp
//
//  Created by SREEHARI MOHAN on 26/10/23.
//

import UIKit
import ContactsUI

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,CNContactPickerDelegate {

    @IBOutlet weak var table: UITableView!
    
    
    var arr = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! myTableViewCell
        cell.lab.text = arr[indexPath.row]
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPress(_ sender: Any) {
        
        let vc = CNContactPickerViewController()
        vc.delegate = self
        present(vc, animated: true)
    }
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        
        arr.append(contact.givenName)
        table.reloadData()
    }
}

