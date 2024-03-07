//
//  PokedexViewModel.swift
//  PokeList
//
//  Created by Cabral Costa, Eduardo on 15/12/23.
//

import Foundation
import UIKit

struct PokedexViewModel{
    var model: PokemonModel
    var pokemons: [PokemonModel]
    
    func remove(index: Int){
        pokemons.remove(at: index)
    }
}
