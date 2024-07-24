//
//  InfoscreenViewModel.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

// MARK: Delegate

protocol InfoscreenViewModelDelegate:AnyObject {
    func reloadView()
    func show(error:String)
}
class InfoscreenViewModel{
    
    // MARK: Variables
    
    var repository: InfoScreenRepositoryType?
    weak var delegate:InfoscreenViewModelDelegate?
    var allPokeList: [pokeInfo] = []
    
    init(repository: InfoScreenRepositoryType, delegate: InfoscreenViewModelDelegate) {
        self.repository = repository
        self.delegate = delegate
    }
    
    //computed properties

    
}
