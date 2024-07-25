//
//  HomescreenModel.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/24.
//

import Foundation

struct PokemonListResponse: Codable {
    
    let count:Int
    let next: String
    let previous: String?
    let PokemonListResponse : [PokemonList]
    
    enum CodingKeys: String, CodingKey{
        case count,next,previous
        case PokemonListResponse = "results"
    }
}
struct PokemonList:Codable {
    let name: String
    let url: String
}

