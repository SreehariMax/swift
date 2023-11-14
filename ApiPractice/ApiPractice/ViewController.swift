//
//  ViewController.swift
//  ApiPractice
//
//  Created by SREEHARI MOHAN on 09/11/23.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var db: DBooks?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        db?.books.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableList.dequeueReusableCell(withIdentifier: "cell1") as! TableViewCell
        
        if db?.books[indexPath.row].authors != nil{
            cell.authorLabel.text = (db?.books[indexPath.row].authors)
        }
        else {
            cell.authorLabel.text = "Error"
        }
        
        if db?.books[indexPath.row].title != nil{
            cell.titleLabel.text = (db?.books[indexPath.row].title)
        }
        else {
            cell.titleLabel.text = "Error"
        }
        if db?.books[indexPath.row].image != nil{
            let url = URL(string: (db?.books[indexPath.row].image ?? "no")!)
            cell.bookImage.downloadImage(from: url!)
            cell.imageView?.contentMode = .scaleAspectFit
        }
        return cell
    }
    

    @IBOutlet weak var tableList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableList.dataSource = self
        tableList.delegate = self
        
        fetchItems()
        
    }
    
    func fetchItems(){
        let urlString = "https://www.dbooks.org/api/recent"
        
        let url = URL(string: urlString)
        guard url != nil
        else {return}
        
        let datatask = URLSession.shared.dataTask(with: url!){
            data, response, error in
            if(error ==  nil && data != nil){
                self.db = try! JSONDecoder().decode(DBooks.self, from: data!)
                
                print(self.db ?? "OK")
            }
            
            DispatchQueue.main.async {
                self.tableList.reloadData()
            }
        }
        
        datatask.resume()
        
    }
    
}
extension UIImageView{
    func downloadImage(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
            else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
}
