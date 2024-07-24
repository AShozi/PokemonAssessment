//
//  HomescreenViewController.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import UIKit

class HomescreenViewController: UIViewController {

    
    @IBOutlet weak var homeTableview: UITableView!
    
    private lazy var viewModel = HomescreenViewModel(repository: HomescreenRepository(),delegate: self)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    func setUpTableView() {
        
    }
    
    
    //MARK:  Navigation
    
    
}

extension HomescreenViewController : UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.allPokeListCount
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>

    }
//     going to have a perform segue thats sends the id

}

extension HomescreenViewController :HomescreenViewModelDelegate {
    func reloadView() {
        homeTableview.reloadData()
    }
    
    func show(error: String) {
        <#code#>
    }
    
    
}
