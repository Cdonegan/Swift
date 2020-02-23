//
//  FoodCell.swift
//  FoodAPP
//
//  Created by Connor Donegan on 2/18/20.
//  Copyright © 2020 Connor Donegan. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {
    
    
    @IBOutlet weak var imageName: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var foodCals: UILabel!
    
    var foodImageName: String?
    var foodName: String?
    var foodCount: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
