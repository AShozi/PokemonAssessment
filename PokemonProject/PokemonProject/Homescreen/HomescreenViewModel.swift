//
//  HomescreenViewModel.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

protocol HomescreenViewModelType:AnyObject {
    func reload()
    func showError()
}
class HomescreenViewModel{
    
    var repository: HomescreenRepositoryType?
    weak var delegate:HomescreenViewModel?
    var poke =
    
    init(repository: HomescreenRepositoryType? = nil, delegate: HomescreenViewModel? = nil) {
        self.repository = repository
        self.delegate = delegate
    }
    

    
}
