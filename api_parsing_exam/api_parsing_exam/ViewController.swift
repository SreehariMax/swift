//
//  ViewController.swift
//  api_parsing_exam
//
//  Created by SREEHARI MOHAN on 09/11/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var db:DB?

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        // Do any additional setup after loading the view.
        
        fetchContent()
    }
    
    func fetchContent(){
        
        let urlString = "https://www.dbooks.org/api/recent"
        
        let url = URL(string: urlString)
        
        
        guard url != nil else{
            return
        }
        
        let datatask = URLSession.shared.dataTask(with: url!){
            
            data,response,error in
            if error == nil && data != nil{
                self.db = try! JSONDecoder().decode(DB.self, from: data!)
                
                print(self.db ?? "")
            }
            
            DispatchQueue.main.async{
                self.table.reloadData()
            }
            
            
        }
        datatask.resume()
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        (db?.books.count ?? 0)!
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


        let cell = table.dequeueReusableCell(withIdentifier: "cell1") as! myTableViewCell
        
        if db?.books[indexPath.row].title != nil{
            
            cell.titleBook.text = (db?.books[indexPath.row].title)
            
        }
        else {
            
            cell.titleBook.text = "No title found"
        }
        
        if db?.books[indexPath.row].authors != nil{
            
            cell.authorBook.text = (db?.books[indexPath.row].authors)
            
        }
        else {
            
            cell.authorBook.text = "No title found"
        }
        
        if db?.books[indexPath.row].image != nil {
            
            
            let url = URL(string: (db?.books[indexPath.row].image ?? "no")!)
            cell.img.downloadImage(from: url!)
            cell.img.contentMode = .scaleToFill
            
        }

        return cell
    }
    
    


}

extension UIImageView{
    func downloadImage(from url:URL)
    {
        //contentMode = .scaleToFill
        let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse,httpResponse.statusCode == 200,
                  let mimeType = response?.mimeType,mimeType.hasPrefix("image"),
                  let data = data,error == nil,
                  let image = UIImage(data: data)
            else{return}

            DispatchQueue.main.sync{

                self.image = image
                
            }

            }

        dataTask.resume()

        }
    }

