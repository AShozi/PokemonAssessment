//
//  homescreenRepository.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

typealias HomescreenResult = (Result <PokemonListResponse,APIError>) -> Void

protocol HomescreenRepositoryType: AnyObject {
    func fetchHomeResult (completion: @escaping HomescreenResult)
}

class HomescreenRepository:HomescreenRepositoryType {
    func fetchHomeResult(completion: @escaping HomescreenResult) {
        URLSession.shared.request(endpoint: Endpoint.baseURL, method: .GET, completion: completion)
    }

}


