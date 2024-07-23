//
//  InfoscreenViewModel.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

protocol InfoscreenViewModelType:AnyObject {
    func reloadView()
    func show(error:String)
}
class InfoscreenViewModel{
    var repository: InfoscreenRepositoryType?
    weak var delegate:InfoscreenViewModel?
    var allPokeList: [poke] = []
    
    init(repository: InfoscreenRepositoryType? = nil, delegate: InfoscreenViewModel? = nil) {
        self.repository = repository
        self.delegate = delegate
    }
    
    //computed properties
    
    
    
}
