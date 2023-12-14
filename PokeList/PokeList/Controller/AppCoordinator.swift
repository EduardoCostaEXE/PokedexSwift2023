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
    
    func start() {
        let pokedexViewController = pokedexViewController()
//        let listaPokemonsViewModel = ListaPokemonsViewModel()
//        pokedexViewController.viewModel = listaPokemonsViewModel
                
        let navigationController = UINavigationController(rootViewController: pokedexViewController)
                
        window.rootViewController = navigationController
        
        window.makeKeyAndVisible()
    }
}
