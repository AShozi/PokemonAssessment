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
    
    private  var repository: InfoScreenRepositoryType?
    private weak var delegate:InfoscreenViewModelDelegate?
    var pokemonInfo : InfoView?
    
    init(repository: InfoScreenRepositoryType, delegate: InfoscreenViewModelDelegate) {
        self.repository = repository
        self.delegate = delegate
    }
    
    func fetchInfoResult(with name: String) {
        repository?.fetchInfoResult(name:name) { [weak self] result in
            switch result {
            case.success(let response):
                self?.pokemonInfo = response
                self?.delegate?.reloadView()
            case.failure(let error):
                self?.delegate?.show(error:error.rawValue)
            }
        }
    }
    
}
