//
//  ViewController.swift
//  messageapp
//
//  Created by SREEHARI MOHAN on 26/10/23.
//

import UIKit
import MessageUI

class ViewController: UIViewController, UINavigationControllerDelegate, MFMessageComposeViewControllerDelegate{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnPress(_ sender: Any) {
        
        let vc = MFMessageComposeViewController()
        vc.delegate = self
        vc.messageComposeDelegate = self
        vc.recipients = ["9744109139"]
        vc.body = "Hii all"
        present(vc, animated: true)
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true)
    }
    

}

