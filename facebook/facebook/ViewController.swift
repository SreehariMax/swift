//
//  ViewController.swift
//  facebook
//
//  Created by SREEHARI MOHAN on 04/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uname: UITextField!
    @IBOutlet weak var pass: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var lab: UILabel!
    
    @IBAction func loginbtn(_ sender: Any) {
        
        guard let _username = uname.text, let _password = pass.text else {
            // Handle missing username or password
            return
            
        }
        
        validateCredentials(username: _username, password: _password)
    }
    
    func validateCredentials(username: String, password: String) {
        // For demo purposes, let's assume hardcoded credentials
        let validUsername = "sreehari"
        let validPassword = "sreehari"
        
        if username == validUsername && password == validPassword {
            // Successful login
            print("Login successful")
            
            let user = storyboard?.instantiateViewController(identifier: "thirdVC") as!
            secondTableViewController
            present(user, animated: true)
            
           
            
            // Navigate to the next screen or perform desired actions
        } else {
            // Failed login
            print("Invalid credentials")
//            lab.text("Login failed")
            
            // Show an error message to the user
        }
    }
    
   
}

