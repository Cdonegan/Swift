//
//  ViewController.swift
//  FoodApp
//
//  Created by Connor Donegan on 1/29/20.
//  Copyright © 2020 Connor Donegan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Numberfood: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var ViewLabel: UILabel!
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    var position = 0
    var current = 0
    @IBAction func button(_ sender: Any) {

        position = position + 1
        current = position % 4
        
        if(current == 0)
        {
            Image.image = UIImage(named: "taco")
            Numberfood.text = "My #1 favorite food is..."
            ViewLabel.text = "Tacos"
        }
        if(current == 1)
        {
            Image.image = UIImage(named: "pasta")
            Numberfood.text = "My #2 favorite food is..."
            ViewLabel.text = "Pasta"
        }
        if(current == 2)
        {
            Image.image = UIImage(named: "icecreamm")
            Numberfood.text = "My #3 favorite food is..."
            ViewLabel.text = "Ice Cream"
        }
        if(current == 3)
        {
            Image.image = UIImage(named: "goat")
            Numberfood.text = "My #4 favorite food is..."
            ViewLabel.text = "Goat"
        }
        
    }
}

