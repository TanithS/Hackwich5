//
//  ViewController.swift
//  Hackwich5
//
//  Created by User on 2/18/21.
//

import UIKit

class ViewController: UIViewController {
    
    var currentIndex = 0
    
    var favoriteFoodsArray = ["Edamame", "Tofu", "Curry", "Pasta", "Poke"]

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        topLabel.text = "My Favorite Foods"
        
        bottomLabel.text = favoriteFoodsArray[currentIndex]
    }

    @IBAction func buttonPressed(_ sender: Any) {
    }
    
}

