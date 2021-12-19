//
//  Model.swift
//  QuickSellAssignement
//
//  Created by sabaz shereef on 17/12/21.
//

import Foundation

struct dataModel: Hashable, Decodable {
 
    let name : String?
    let subname : String?
    let viewed : Bool?
    let numberOfView: Int?
    let messageCount: Int?
    
}
