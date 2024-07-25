//
//  InfoscreenViewController.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import UIKit

class InfoscreenViewController: UIViewController {

    var pokemonName:String?
    
 //MARK: IBoutlets
    
    @IBOutlet weak private var infoName: UILabel!
    @IBOutlet weak private var infoImage: UIImageView!
    @IBOutlet weak private var stateLabel: UILabel!
    
    //MARK: UI Components
    private lazy var viewModel = InfoscreenViewModel(repository:InfoScreenRepository(), delegate: self)

    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = pokemonName{
            viewModel.fetchInfoResult(with: name)
        }
    }
}

extension InfoscreenViewController: InfoscreenViewModelDelegate {
    func reloadView() {
    }
    
    func show(error: String) {
    }
    

}
