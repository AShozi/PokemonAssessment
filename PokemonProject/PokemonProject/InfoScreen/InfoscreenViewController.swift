//
//  InfoscreenViewController.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import UIKit

class InfoscreenViewController: UIViewController {
 
//    var pokemonName:String
    
 //MARK: IBoutlets
    
    @IBOutlet weak var infoName: UILabel!
    @IBOutlet weak var infoImage: UIImageView!
    @IBOutlet weak var stateLabel: UILabel!
    
    private lazy var viewModel = InfoscreenViewController(repository:InfoScreenRepository(), delegate: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchInfoResult{
            infoName.text =  viewModel.infoName
//            viewModel.infoImage
            viewModel = viewModel.stateLabel
        }
    }
}
