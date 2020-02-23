//
//  FirstViewController.swift
//  FoodApp
//
//  Created by Connor Donegan on 1/29/20.
//  Copyright © 2020 Connor Donegan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var Numberfood: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var ViewLabel: UILabel!
    
    var position = 0
    var current = 0
    var imageName = ["taco","pasta","icecreamm","goat","generic"]
    var label = ["Tacos","Pasta", "Ice Cream", "Goat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        position = position + 1
        current = position % label.count
        
        if current > imageName.count - 1{
            Image.image = UIImage(named: imageName[imageName.count - 1])
        }
        else{
        Image.image = UIImage(named: imageName[current])
        }
        Numberfood.text = "My #\(current + 1) favorite food is..."
        ViewLabel.text = label[current]
       
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "fromAddToAddFood")
        {
                let secondVC = segue.destination as! AddFoodViewController
            secondVC.countOfFood = label.count
        }
    }
    
    @IBAction func unwindFromSecondView (sender: UIStoryboardSegue) {
        let secondVC = sender.source as! AddFoodViewController
        
        let saveFlag = secondVC.saveFlag
        let cancelFlag = secondVC.cancelFlag
        //var newFood: String?
        
        if cancelFlag == 1
        {
            performSegue(withIdentifier: "unwindSecondView", sender: nil)
        }
        
        else if let newFood = secondVC.newFood
        {//once inside this loop you must store the new food in label and add it to the slideshow
            label.append(newFood)
            print("added to label")
            print(label.count)
            
            
        }
        else if saveFlag > 0
        {
            performSegue(withIdentifier: "unwindSecondView", sender: nil)
        }
        
        // called everytme cancel or save is tapped
        // if cancel > 0  it was tapped and return
        //else save the text and add it to the label array
       
    }
    
}

