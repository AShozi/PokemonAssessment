//
//  HomescreenViewModel.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

protocol HomescreenViewModelDelegate:AnyObject {
    func reloadView()
    func show(error:String)
}
class HomescreenViewModel{
    
    private private var repository: HomescreenRepositoryType?
    private   weak var delegate:HomescreenViewModelDelegate?
     var allPokeList: [PokemonList] = []
    
    init(repository: HomescreenRepositoryType, delegate: HomescreenViewModelDelegate) {
        self.repository = repository
        self.delegate = delegate
    }
    
    //MARK: Computed Properties
    
    var allPokeListCount:Int {
        allPokeList.count
    }
  
    func pokeAtIndex(atIndex:Int) -> PokemonList {
        allPokeList[atIndex]
    }
    
    func fetchHomeResult() {
        repository?.fetchHomeResult { [weak self] (result: (Result <PokemonListResponse,APIError>)) in
            switch result {
            case .success(let object):
                self?.allPokeList = object.PokemonListResponse
                self?.delegate?.reloadView()
            case .failure (let error):
                self?.delegate?.show(error:error.rawValue)
            }
        }
    }
}
