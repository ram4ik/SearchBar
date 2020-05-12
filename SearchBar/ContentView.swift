//
//  ContentView.swift
//  SearchBar
//
//  Created by ramil on 12.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var wines = WineJSONDecoder.decodeWineJSON()
    @State private var searchBarText: String = String()
    
    var body: some View {
        VStack {
            SearchBarView(searchBarText: $searchBarText)
            List {
                ForEach(wines.filter({searchBarText.isEmpty ? true : $0.name.contains(searchBarText)}), id: \.id) { wine in
                    WineRow(wine: wine)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
