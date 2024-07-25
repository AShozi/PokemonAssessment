//
//  InfoScreenRepository.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

typealias InfoscreenResult = (Result<InfoView,APIError>) -> Void

protocol InfoScreenRepositoryType:AnyObject {
    func fetchInfoResult(name:String,completion: @escaping InfoscreenResult)
}

class InfoScreenRepository:InfoScreenRepositoryType {
    func fetchInfoResult(name:String,completion: @escaping InfoscreenResult) {
        let URL = Endpoint.detailURL + "\(name)"
        URLSession.shared.request(endpoint: URL, method: .GET, completion: completion)
    }
}

