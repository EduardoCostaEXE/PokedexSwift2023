//
//  AppCoordinator.swift
//  PokeList
//
//  Created by Cabral Costa, Eduardo on 14/12/23.
//

import Foundation
import UIKit

class AppCoordinator {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start(){
        let pokedexView = PokedexViewController()
        let listaPokemonsViewModel = PokedexViewModel()
        pokedexView.viewModel = listaPokemonsViewModel
    }
}
