//
//  PokeCell.swift
//  pokedex
//
//  Created by ilyas kose on 25/07/16.
//  Copyright © 2016 ilyas kose. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var pokeImg: UIImageView!
    @IBOutlet weak var pokeLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 10.0
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        pokeLbl.text = self.pokemon.name.capitalizedString
        pokeImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
        
    }
}
