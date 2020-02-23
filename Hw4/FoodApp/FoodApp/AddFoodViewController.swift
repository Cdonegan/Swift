//
//  AddFoodViewController.swift
//  FoodApp
//
//  Created by Connor Donegan on 2/11/20.
//  Copyright © 2020 Connor Donegan. All rights reserved.
//

import UIKit

class AddFoodViewController: UIViewController, UITextFieldDelegate {
    var secondViewLabel: String?
    var cancelFlag = 0
    var saveFlag = 0
    var newFood: String?
    var countOfFood: Int? // need to add 1 to whatever the value is for the new food to add
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var midLabel: UILabel!
    @IBOutlet weak var textBox: UITextField!
    
    @IBOutlet weak var numberFoodLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textBox.delegate = self //sets the delegate of text field to this particualar view controller, where all the functions should be created for the delegate
        
        // Do any additional setup after loading the view.
        numberFoodLabel.text = "Enter name of food #\( countOfFood! + 1)"
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() //removes keyboard when the return button is entered
        return false
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
         //performSegue(withIdentifier: "unwindSecondView", sender: nil)
         cancelFlag += 1
         
     }
     
     @IBAction func saveTapped(_ sender: Any) {
         //save was tapped not
         saveFlag += 1
         newFood = textBox.text
         
         
         
     }
     
    func textFieldDidEndEditing(_ textField: UITextField) {
       newFood = textField.text
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
