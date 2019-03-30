//
//  ViewController.swift
//  expirationdate
//
//  Created by Iris Jiang on 3/29/19.
//  Copyright © 2019 Iris Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    var foods: [foodfile] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        foods = createArray()
        tableview.delegate=self
        tableview.dataSource=self
    }

    func createArray() -> [foodfile] {
        
        var tempfoods: [foodfile] = []
        let newimage1 = UIImage(named: "milk")
        let newimage2 = UIImage(named: "garlic")
        
        
        let food1 = foodfile(image:newimage1!,title: "milk", boughtdate: "2019.3.28")
        let food2 = foodfile(image:newimage2!,title: "garlic", boughtdate: "2019.2.28")
        
        tempfoods.append(food1)
        tempfoods.append(food2)
        
        return tempfoods
        
    }
    

}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let food = foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodscell") as! FoodCell
        cell.setFood(food: food)
        return cell
    }
}
