//
//  ViewController.swift
//  newsapp
//
//  Created by SREEHARI MOHAN on 26/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    var record:Record?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    func parseJson(){
        
        guard let path = Bundle.main.path(forResource: "records 2", ofType: "json")
                
        else{
            return
        }
        
        let url = URL(fileURLWithPath: path)
        let jsondata = try! Data(contentsOf: url)
        
        record = try! JSONDecoder().decode(Record.self, from: jsondata)
        
        if let record = record{
            print(record)
        }
        else{
            print("failure to pass data")
            
        }
        
    }
   
    
   


}

