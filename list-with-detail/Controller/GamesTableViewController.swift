//
//  GamesTableViewController.swift
//  list-with-detail
//
//  Created by divani fuentes marcos on 25/05/20.
//  Copyright © 2020 divani fuentes marcos. All rights reserved.
//

import UIKit

class GamesTableViewController: UITableViewController {
    
    var gameSelected: Game?
    
    let games = [
        Game(name: "The last of us", price: "1000", code: "TLOU", imageName: "the_last_of_us"),
        Game(name: "Fallout 4", price: "400", code: "FL4", imageName: "fallout_4"),
        Game(name: "Resident Evil 3 Remake", price: "1200", code: "RE3R", imageName: "re3_remake"),
        Game(name: "Final Fantasy 7 Remake", price: "1000", code: "FF7R", imageName: "ff7_remake"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
   }

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return games.count
   }

   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath)

        let game = games[indexPath.row]
        cell.textLabel?.text = game.name
        cell.detailTextLabel?.text = game.price
        cell.imageView?.image = UIImage(named: game.imageName)

       return cell
   }

//   override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//       return "Section \(section)"
//   }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.gameSelected = self.games[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let destinationVC = segue.destination as! ViewController
        destinationVC.game = self.gameSelected
    }

}
