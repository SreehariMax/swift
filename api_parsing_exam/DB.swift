//
//  DB.swift
//  api_parsing_exam
//
//  Created by SREEHARI MOHAN on 09/11/23.
//

import Foundation

struct DB:Codable {
    
    var status:String
    var total:Int
    var books:[Books]
    
    struct Books:Codable{
        var title:String
        var authors:String
        var image: String
    }
}
