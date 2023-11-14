//
//  ViewController.swift
//  email
//
//  Created by SREEHARI MOHAN on 26/10/23.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPress(_ sender: Any) {
        
        if !MFMailComposeViewController.canSendMail(){
            print("Mail Service not availabe")
            return
        }
        
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = self
        vc.delegate = self
        vc.setSubject("Hiii")
        vc.setToRecipients(["catherincr19@gmail.com"])
        vc.setMessageBody("Hello Cat", isHTML: false)
        present(vc, animated: true)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
}

