//
//  InfoScreenRepository.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

typealias InfoscreenResult = (Result<[poke]>,APIError) -> Void

protocol InfoScreenRepositoryType:AnyObject {
    func fetchInfoResult(completion: @escaping InfoscreenResult)
}

class InfoScreenRepository:InfoScreenRepositoryType {
    func fetchInfoResult(completion: @escaping InfoscreenResult) {
        <#code#>
    }
}

