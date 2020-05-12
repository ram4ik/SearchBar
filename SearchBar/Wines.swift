//
//  Wines.swift
//  SearchBar
//
//  Created by ramil on 12.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

struct Wines: Decodable {
    
    let id: Int
    let name, year, icon: String
}
