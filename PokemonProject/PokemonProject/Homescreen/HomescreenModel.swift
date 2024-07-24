//
//  HomescreenModel.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/24.
//

import Foundation

struct PokemonListResponse: Codable {
    
    let count:Int
    let next: Int
    let previous: String
    let results: [PokemonCharacter]
}
struct PokemonCharacter:Codable {
    let name: String
    let url: String
}

