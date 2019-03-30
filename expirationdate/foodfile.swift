//
//  foodfile.swift
//  expirationdate
//
//  Created by Iris Jiang on 3/29/19.
//  Copyright © 2019 Iris Jiang. All rights reserved.
//

import Foundation
import UIKit

class foodfile {
    var image: UIImage
    var title: String
    var boughtdate: String
    
    init(image: UIImage, title: String, boughtdate: String){
        self.image = image
        self.title = title
        self.boughtdate = boughtdate
    }
}
