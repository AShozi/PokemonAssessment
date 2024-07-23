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
    var allPokeList: [poke] = []
    
    init(repository: HomescreenRepositoryType? = nil, delegate: HomescreenViewModel? = nil) {
        self.repository = repository
        self.delegate = delegate
    }
    
    //computed Properties
    
    var allPokeListCount:Int {
        allPokeList.count
    }
    
    //functions
    
    func pokeAtIndex(atIndex:Int) -> poke {
        allPokeList[atIndex]
    }
//dont stress u know this you can still clean
    
    func fetchHomeResult() { [weak self] result in switch result {
    case .success(let object):
        self.allPokeList = object
        self.delegate.reload()
    case .failure (let error):
        self.delegate.showError(error.rawValue)
    }
        
        
    }
}
