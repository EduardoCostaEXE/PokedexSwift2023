//
//  ViewController.swift
//  PokeList
//
//  Created by Cabral Costa, Eduardo on 13/12/23.
//

import UIKit
 
class pokedexViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    // Array temporária
    var nomesPokemons = ["Bulbasaur", "Charmander", "Squirtle", "Pikachu", "Eevee"]
 
    let tableView = UITableView()
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        tableView.dataSource = self
        tableView.delegate = self
 
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellPokemon")
 
        view.addSubview(tableView)
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nomesPokemons.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPokemon", for: indexPath)
        cell.textLabel?.text = nomesPokemons[indexPath.row]
        return cell
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Select cell
        print("Selected: \(nomesPokemons[indexPath.row])")
    }
  
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}
