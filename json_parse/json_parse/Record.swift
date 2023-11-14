//
//  Record.swift
//  json_parse
//
//  Created by SREEHARI MOHAN on 26/10/23.
//

import Foundation
struct Record: Codable{
    let data:[RecordItems]
}

struct RecordItems:Codable{
    let title:String
    let items:[String]
}
