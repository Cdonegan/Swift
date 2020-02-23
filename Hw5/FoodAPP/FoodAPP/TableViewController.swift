//
//  TableViewController.swift
//  FoodAPP
//
//  Created by Connor Donegan on 2/18/20.
//  Copyright © 2020 Connor Donegan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var foods = [FoodItem]()
    var imageName = ["taco","pasta","icecreamm","goat","generic"]
    var label = ["Tacos","Pasta", "Ice Cream", "Goat"]
    var cals = [200,178,300,279,100]

    var newFood = FoodItem()
    

    
    @IBAction func addButton(_ sender: Any) { //Add button was pressed, need to add a new fooditem to the array of foodItems
        newFood = FoodItem()
        newFood.foodCals = cals[4]
        newFood.foodName = "Food"
        newFood.foodImageName = imageName[4]
        foods.append(newFood)
        tableView.reloadData() //updates information in dynamically created arrays 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        for x in 0 ... label.count - 1{
            newFood = FoodItem()
            newFood.foodName = label[x]
            newFood.foodImageName = imageName[x]
            newFood.foodCals = cals[x]
            print(newFood.foodName! as String)
            foods.append(newFood)
            //tableView.reloadData() //updates the information in the dynamic arrays
            print(String(foods[x].foodName!))
            
        } //finished initializing the fooditem class array
        print(String(foods[0].foodName!))
        print(String(foods[1].foodName!))
        print(String(foods[2].foodName!))
        //tableView.reloadData()
        tableView.rowHeight = 58
        //changing the row hight on the table
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foods.count
    }

    //this functino creates a new row STPPPEDDDD HERE
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodCell

        // Configure the cell...
        let indexRow = indexPath.row
        cell.imageName.image = UIImage(named: foods[indexRow].foodImageName!)
        cell.foodLabel.text = foods[indexRow].foodName
        cell.foodCals.text = "\(foods[indexRow].foodCals) cals"
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let row = indexPath.row
            
            foods.remove(at: row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        /*else if editingStyle == .insert {
            
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            let row = indexPath.row
            
        }    */
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
