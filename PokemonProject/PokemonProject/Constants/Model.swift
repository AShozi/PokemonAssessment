//
//  Model.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

struct Poke:Codable {
  
    let name:String
    let pokeURL:String
    
}

enum CodingKeys:String, CodingKey{
    case name
    case pokeURL = "url"
}
