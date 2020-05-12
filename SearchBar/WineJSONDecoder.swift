//
//  WineJSONDecoder.swift
//  SearchBar
//
//  Created by ramil on 12.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

struct WineJSONDecoder {
    
    static func decodeWineJSON() -> [Wines] {
        let tempJSON = Bundle.main.path(forResource: "wine", ofType: "json")
        let wineData = try! Data(contentsOf: URL(fileURLWithPath: tempJSON!), options: .alwaysMapped)
        return try! JSONDecoder().decode([Wines].self, from: wineData)
    }
}
