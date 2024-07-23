//
//  homescreenRepository.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

typealias HomescreenResult = Result (<[Poke],APIError>) -> Void

protocol HomescreenRepositoryType: AnyObject {
    func fetchHomeResult (completion: @escaping HomescreenResult)
}

class HomescreenRepository:HomescreenRepositoryType {
    
    func fetchHomeResult (
    
    //implement session for apple auto complete
        URLsession.shared.request(
    )
}


