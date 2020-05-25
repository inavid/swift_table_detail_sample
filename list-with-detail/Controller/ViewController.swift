//
//  ViewController.swift
//  list-with-detail
//
//  Created by divani fuentes marcos on 24/05/20.
//  Copyright © 2020 divani fuentes marcos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var game: Game?
    
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameName: UILabel!
    @IBOutlet weak var gamePrice: UILabel!
    @IBOutlet weak var gameCode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gameName.text = game?.name
        gamePrice.text = game?.price
        gameCode.text = game?.code
        gameImage.image = UIImage(named: game!.imageName)
    }

}
