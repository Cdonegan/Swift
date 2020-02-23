//
//  ViewController.swift
//  FoodApp
//
//  Created by Connor Donegan on 1/29/20.
//  Copyright © 2020 Connor Donegan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MyTimerDelegate {
  
    
    //Outlets
    
    @IBOutlet weak var Numberfood: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var ViewLabel: UILabel!
    
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var delaySlider: UISlider!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    var current: Int = 0
    
    func timeChanged(time: Int) {
          //print("time changed, working with value \(time)")
        var slide: Int = 0
        slide = time % 4
        if(slide == 0)
        {
            Image.image = UIImage(named: "taco")
            Numberfood.text = "My #1 favorite food is..."			
            ViewLabel.text = "Tacos"
            
        }
        if(slide == 1)
        {
            Image.image = UIImage(named: "pasta")
            Numberfood.text = "My #2 favorite food is..."
            ViewLabel.text = "Pasta"
            
        }
        if(slide == 2)
        {
            Image.image = UIImage(named: "icecreamm")
            Numberfood.text = "My #3 favorite food is..."
            ViewLabel.text = "Ice Cream"
            
        }
        if(slide == 3)
        {
            Image.image = UIImage(named: "goat")
            Numberfood.text = "My #4 favorite food is..."
            ViewLabel.text = "Goat"
          
        }
        myTimer?.stop()
        myTimer?.start()

    }
      
      func timesUp() {
          print("times up")
      }
      
    
    // Main
    var myTimer: MyTimer? //creating a myTimer varaiable and assigning it to the class MyTimer
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTimer = MyTimer()
        myTimer?.delegate = self //setting the delegate
        
    }
    
    
    // Actions
   
    @IBAction func startTapped(_ sender: UIButton) {
          startButton.isEnabled = false
          stopButton.isEnabled = true
        
          // Start running the slide show
          // start the timer
        myTimer?.start()
      }
    
    @IBAction func stopTapped(_ sender: UIButton) {
        startButton.isEnabled = true
        stopButton.isEnabled = false
    
        myTimer?.stop()
        
       }
       
    @IBAction func delaySliderValueChanged(_ sender: UISlider) {
        let initTime = Int(sender.value)
        myTimer?.setDelayTime(initTime)
        delayLabel.text = "Delay: \(initTime)s"
        //myTimer?.setInitialTime(initTime)
        myTimer?.stop()
        myTimer?.start()
        
       }
        
}
