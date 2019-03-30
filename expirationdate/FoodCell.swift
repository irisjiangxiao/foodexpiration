//
//  FoodCell.swift
//  expirationdate
//
//  Created by Iris Jiang on 3/29/19.
//  Copyright © 2019 Iris Jiang. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {

    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodDateLabel: UILabel!
    
    func setFood(food: foodfile){
        foodImageView.image = food.image
        foodNameLabel.text = food.title
        foodDateLabel.text = food.boughtdate
    }
}
