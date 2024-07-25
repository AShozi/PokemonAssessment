//
//  HomescreenViewController.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import UIKit

class HomescreenViewController: UIViewController {

    //MARK: IBOutlet:
    
    @IBOutlet weak var homeTableview: UITableView!
    
    //MARK: UIComponent
    
    private lazy var viewModel = HomescreenViewModel(repository: HomescreenRepository(),delegate: self)
    
    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        viewModel.fetchHomeResult()
    }
    func setUpTableView() {
        homeTableview.register(homeTableViewCell.homeTableViewNib(), forCellReuseIdentifier: "homeCell")
        homeTableview.delegate = self
        homeTableview.dataSource = self
    }
}

//MARK: Extensions

extension HomescreenViewController : UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.allPokeListCount
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       guard let cell = homeTableview.dequeueReusableCell(withIdentifier: "homeCell") as?
        homeTableViewCell else {
            return UITableViewCell()
        }
    
        let pokemonList = viewModel.allPokeList[indexPath.row]
        cell.configCell(PokemonList:pokemonList)
        return cell
        
    }
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCharacter = viewModel.pokeAtIndex(atIndex: indexPath.row)
        performSegue(withIdentifier: "infoSegue", sender:  selectedCharacter.name)
    }

}

extension HomescreenViewController :HomescreenViewModelDelegate {
    func reloadView() {
        homeTableview.reloadData()
    }
    
    func show(error: String) {

    }
    
    
}
