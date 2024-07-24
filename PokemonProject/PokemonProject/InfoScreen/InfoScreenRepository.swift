//
//  InfoScreenRepository.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

typealias InfoscreenResult = (Result<[pokeInfo]>,APIError) -> Void

protocol InfoScreenRepositoryType:AnyObject {
    func fetchInfoResult(name:String,completion: @escaping InfoscreenResult)
}

class InfoScreenRepository:InfoScreenRepositoryType {
    func fetchInfoResult(name:String,completion: @escapingInfoscreenResult) {
        let URL = Endpoint.baseURL + "\(name)"
        URLSession.shared.request(endpoint: URL, method: .GET, completion: completion)
    }
}

