//
//  WineRow.swift
//  SearchBar
//
//  Created by ramil on 12.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct WineRow: View {
    var wine: Wines
    
    var body: some View {
        HStack(spacing: 20) {
            Image(wine.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 110, height: 110, alignment: .center)
            
            VStack(alignment: .leading) {
                Text(wine.name)
                    .font(.title)
                    .fontWeight(.regular)
                    .lineLimit(1)
                
                if wine.year.isEmpty == false {
                    HStack(alignment: .top) {
                        
                        Image("trophy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text(wine.year)
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .lineLimit(1)
                    }
                    .padding()
                    .background(Capsule().fill(Color.black).opacity(0.6))
                    .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                }
            }
            Spacer()
        }.padding()
    }
}

struct WineRow_Previews: PreviewProvider {
    static var previews: some View {
        WineRow(wine: Wines(id: 1, name: "rose", year: "2020", icon: "rose"))
    }
}
