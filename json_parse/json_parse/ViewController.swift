//
//  ViewController.swift
//  json_parse
//
//  Created by SREEHARI MOHAN on 26/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  
    
    var record:Record?

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        
        parseJson()
        // Do any additional setup after loading the view.
    }
    
    func parseJson(){
        
        guard let path = Bundle.main.path(forResource: "records2", ofType: "json")
                
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        record?.data.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        record?.data[section].items.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let modal = record?.data[indexPath.section].items[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1" ) as! myTableViewCell
        cell.label1.text = modal
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return record?.data[section].title
    }


}

