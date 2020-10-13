//
//  WizardController.swift
//  MyFirstApp
//
//  Created by RYAN GREENBURG on 8/28/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

import UIKit

class WizardController {
    
    static var wizards: [Wizard] {
        let gryffindorCrest = UIImage(named: "gryffindor")
        let hufflepuffCrest = UIImage(named: "hufflepuff")
        let ravenclawCrest = UIImage(named: "ravenclaw")
        let slytherinCres = UIImage(named: "slytherin")
        
        return [Wizard(name: "Harry Potter", alias: "The boy who lived", house: "Gryffindor", houseCrest: gryffindorCrest),
         Wizard(name: "Hermione Granger", house: "Gryffindor", houseCrest: gryffindorCrest),
         Wizard(name: "Ronald Weasley", alias: "Ron", house: "Gryffindor", houseCrest: gryffindorCrest),
         Wizard(name: "Tom Riddle", alias: "Lord Voldemort", house: "Slytherin", houseCrest: slytherinCres),
         Wizard(name: "Albus Dumbledore", house: "Gryffindor", houseCrest: gryffindorCrest),
         Wizard(name: "Cedric Diggory", house: "Hufflepuff", houseCrest: hufflepuffCrest),
         Wizard(name: "Luna Lovegood", alias: "Loony Lovegood", house: "Ravenclaw", houseCrest: ravenclawCrest)]
    }
}
