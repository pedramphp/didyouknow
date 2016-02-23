//
//  ViewController.swift
//  FunFacts
//
//  Created by Pedramrazi, Mahdi on 2/21/16.
//  Copyright © 2016 Mexo Inc. All rights reserved.
//

import UIKit

// MVC - Model - View - Controller
// Model will be seperated of the view
// View draw to the string
// View are Main.storyboard.
// View can't communicate with the model
// Controller acts like intermediatiary
// Single Responsibility Principle


class ViewController: UIViewController {
    
    // Interface Builder Outlet
    // weak - type of the connection and how they are connected in memory
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    // Initializer syntax
    let factBook = FactBook()
    let colorModel = ColorModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Target Action design pattern
    @IBAction func showFunFact() {
        let randomColor = colorModel.getRandomColor()
        
        view.backgroundColor = randomColor
        
        funFactButton.tintColor = randomColor
        
        funFactLabel.text = factBook.randomFact()
        
        
    }

}

