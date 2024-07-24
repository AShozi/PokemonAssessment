//
//  TableViewCell.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import UIKit

class homeTableViewCell: UITableViewCell {

    //Mark:IBOutlets
    
    @IBOutlet weak var mainImage: UIImageView!    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
//    func configCell(Poke:poke) {
//        let nameLabel.text = Poke.name
//    }
//    UITableViewCell
//    
//    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
//        configNib() 
        
        
    }
    
}
