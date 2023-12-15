//
//  PokemonModel.swift
//  PokeList
//
//  Created by Cabral Costa, Eduardo on 15/12/23.
//

import Foundation

struct PokemonModel {
    let nome: String
    let type1: String
    let type2: String?
    
    init(nome: String, type1: String, type2: String?){
        self.nome = nome
        self.type1 = type1
        self.type2 = type2
    }
}
