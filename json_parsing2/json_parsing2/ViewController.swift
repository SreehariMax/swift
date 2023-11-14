//
//  ViewController.swift
//  json_parsing2
//
//  Created by SREEHARI MOHAN on 27/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var table: UITableView!
    
    
    var newsfeed:NewsFeed?
    var articlelist = [Articles]()

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        
        fetchContent()
        
        
        // Do any additional setup after loading the view.
    }
    
    func fetchContent()
    {
        
        let urlString = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=5d24f1f32e9149f088e48321fc2d6540"
        
        let url = URL(string: urlString)
        
        guard url != nil else{
            return
        }
            
            let datatask = URLSession.shared.dataTask(with: url!){
                data,response, error in
                if error == nil && data != nil{
                    self.newsfeed = try! JSONDecoder().decode(NewsFeed.self, from: data!)
                    
                    print(self.newsfeed ?? "hello")
                }
                self.articlelist = self.newsfeed!.articles
                
                DispatchQueue.main.async{
                    self.table.reloadData()
                }
                
                
            }
        
        
        datatask.resume()
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articlelist.count
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        400
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = table.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! myTableViewCell
        
        if articlelist[indexPath.row].title != nil
        {
            cell.title.text = (articlelist[indexPath.row].title!)
            
        }
        else
        {
            cell.title.text = "No Author Found"
        }
        if articlelist[indexPath.row].description != nil
        {
            cell.desc.text = "\(articlelist[indexPath.row].description!)"
        }
        else
        {
            cell.desc.text = "No Author Found"
        }
        if articlelist[indexPath.row].urlToImage != nil
        {
            let url = URL(string: articlelist[indexPath.row].urlToImage!)
            cell.img.downloadImage(from: url!)
            cell.imageView?.contentMode = .scaleToFill
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

