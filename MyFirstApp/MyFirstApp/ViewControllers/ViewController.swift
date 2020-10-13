//
//  ViewController.swift
//  MyFirstApp
//
//  Created by RYAN GREENBURG on 8/28/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var wizard: Wizard?

    @IBOutlet weak var crestImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var aliasLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let wizard = wizard else {
            hideAllViews()
            return
        }
        
        if let crest = wizard.houseCrest {
            crestImageView.image = crest
        }
        nameLabel.text = wizard.name
        houseLabel.text = wizard.house
        aliasLabel.text = wizard.alias ?? ""
    }
    
    func hideAllViews() {
        nameLabel.text = "Something went wrong passing your Wizard object through prepareForSegue"
        crestImageView.isHidden = true
        houseLabel.isHidden = true
        aliasLabel.isHidden = true
    }
}

