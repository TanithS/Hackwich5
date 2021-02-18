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
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.topLabel.text = "My Favorite Foods"
        
        self.bottomLabel.text = favoriteFoodsArray[currentIndex]
    }

    @IBAction func buttonPressed(_ sender: Any) {
     
        if self.currentIndex < self.favoriteFoodsArray.count {
        //1. The "if" statement is referencing the currentIndex for the elements in the favoriteFoodsArray, and will run so long as the currentIndex is less than the total element count.
            
            self.bottomLabel.text = favoriteFoodsArray[currentIndex]
            //2. The text for bottomLabel will reflect the element that is in the currentIndex.
            
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            //3. The buttonLabel will actively display "Next" so long as the "if" statement is still cycling through elements in the array.
            
            currentIndex+=1
            //4. The currentIndex will continue to add +1 to itself each time the "if" statement is cycled through, until it reaches its assigned limit (< the total element count).
            
        }
        
        else {
            
            print("Button has been disabled.")
            //5. The console will print "Button has been disabled." after the "if" statement has reached its assigned limit (text will not show in app itself).
            
            (buttonLabel!).isEnabled=false
            //6. Once the "if" statement that contains buttonLabel/"Next" reaches its assigned limit, the button will deactive itself so users will no longer be able to press it.
            
        }
        
    }
    
    
}

