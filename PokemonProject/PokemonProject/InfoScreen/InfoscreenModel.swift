//
//  InfoscreenModel.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

struct InfoView:Codable {
    
    let name: String
    let isBattleOnly: Bool
    let sprites: String
    
    enum CodingKeys:String, CodingKey {
        case name, sprites
        case isBattleOnly = "is_battle_only"
    }
    
}
