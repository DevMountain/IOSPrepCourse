//
//  Wizard.swift
//  MyFirstApp
//
//  Created by RYAN GREENBURG on 8/28/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

import UIKit

class Wizard {
    
    let name: String
    let alias: String?
    let house: String
    let houseCrest: UIImage?
    
    init(name: String, alias: String? = nil, house: String, houseCrest: UIImage?) {
        self.name = name
        self.alias = alias
        self.house = house
        self.houseCrest = houseCrest
    }
}
