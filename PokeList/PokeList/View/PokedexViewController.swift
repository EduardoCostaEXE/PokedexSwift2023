//
//  ViewController.swift
//  PokeList
//
//  Created by Cabral Costa, Eduardo on 13/12/23.
//

import UIKit
 
class PokedexViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    var viewModel: PokedexViewModel
    
    // Array temporária
    var nomesPokemons = ["Bulbasaur", "Charmander", "Squirtle", "Pikachu", "Eevee"]
 
    let tableView = UITableView()
    
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        setupTableview()
    }
    
    func setupTableview(){
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
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
            let deleteAction = UIContextualAction(style: .destructive, title: nil) { (_, _, completionHandler) in
                self.viewModel.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                AppDefaults.removeUser(index: indexPath.row)
                completionHandler(true)
                
                if AppDefaults.recoverUsers().isEmpty{
                    self.viewModel?.router?.showNewUserScreen()
                    return
                }
            }
            deleteAction.image = UIImage(systemName: "trash")
        deleteAction.backgroundColor = UIColor(.red)
            let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
            return configuration
        }
}
