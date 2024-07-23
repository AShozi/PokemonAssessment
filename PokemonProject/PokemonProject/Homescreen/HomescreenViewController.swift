//
//  HomescreenViewController.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import UIKit

class HomescreenViewController: UIViewController {
    
    
    @IBOutlet weak var homeTableview: UITableView!
    private lazy var HomescreenViewController(HomescreenViewModel(repository: HomescreenRepositoryType))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    //MARK: - Navigation
    
    
}

extension UIViewController : UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        HomescreenViewModel.allPokeListCount
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
        
        
    }
    // going to have a perform segue thats sends the id

)

}
