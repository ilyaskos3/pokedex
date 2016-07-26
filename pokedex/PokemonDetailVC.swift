//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by ilyas kose on 26/07/16.
//  Copyright © 2016 ilyas kose. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var pokeName: UILabel!
    @IBOutlet weak var pokeMainImg: UIImageView!
    @IBOutlet weak var pokeDesc: UILabel!
    @IBOutlet weak var pokeTypeLbl: UILabel!
    @IBOutlet weak var pokeDefLbl: UILabel!
    @IBOutlet weak var pokeHeightLbl: UILabel!
    @IBOutlet weak var pokeIdLbl: UILabel!
    @IBOutlet weak var pokeWeightLbl: UILabel!
    @IBOutlet weak var pokeBaseAttackLbl: UILabel!
    @IBOutlet weak var pokeEvoLbl: UILabel!
    @IBOutlet weak var pokeNextEvoImg: UIImageView!
    @IBOutlet weak var pokeNextNextEvo: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokeName.text = pokemon.name
        pokeMainImg.image = UIImage(named: "\(pokemon.pokedexId)")
        pokemon.downloadPokemonDetails { () -> () in
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func backButtonPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
