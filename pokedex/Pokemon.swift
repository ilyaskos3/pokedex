//
//  Pokemon.swift
//  pokedex
//
//  Created by ilyas kose on 25/07/16.
//  Copyright © 2016 ilyas kose. All rights reserved.
//

import Foundation

class Pokemon{
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _baseAtk: String!
    private var _evoText: String!
    
    
    var name: String{
        return _name
    }
    
    var pokedexId: Int{
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int){
        self._name=name
        self._pokedexId = pokedexId
    }
}