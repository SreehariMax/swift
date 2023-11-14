//
//  NewsFeed.swift
//  json_parsing2
//
//  Created by SREEHARI MOHAN on 27/10/23.
//

import Foundation

struct NewsFeed:Codable{
    var status:String
    var totalResults:Int
    var articles:[Articles]
}
