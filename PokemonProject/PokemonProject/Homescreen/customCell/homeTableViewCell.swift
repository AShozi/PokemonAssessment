//
//  TableViewCell.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import UIKit

class homeTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    
    @IBOutlet weak private var mainImage: UIImageView!
    @IBOutlet weak private var nameLabel: UILabel!
    
    //MARK: Functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configCell(PokemonList:PokemonList) {
        nameLabel.text = PokemonList.name
    }
    
    static func homeTableViewNib() -> UINib {
        UINib(nibName: "homeTableViewCell", bundle: nil)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
