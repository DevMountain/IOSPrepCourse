//
//  ViewController.swift
//  Day4_iOSPrep
//
//  Created by Karl Pfister on 9/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {


    //MARK: - Properties
    var hogwartsArray = ["Slytherin","Ravenclaw","Hufflepuff","Gryffindor"]

    var hogwarts = [["name":"Slytherin"],
                    ["name":"Hufflepuff"],
                    ["name":"Gryffindor"],
                    ["name":"Ravenclaw"]]

    //MARK: - Outlets
    @IBOutlet weak var houseLabelOne: UILabel!
    @IBOutlet weak var houseLabelTwo: UILabel!
    @IBOutlet weak var houseLabelThree: UILabel!
    @IBOutlet weak var houseLabelFour: UILabel!
    @IBOutlet weak var housesTableView: UITableView!

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        /// Teaching note: This is the first property to populate, then you will update with the `displayHouses` function
//        houseLabelOne.text = "This is a test of the text. Is this comming through?"
        /// Teaching note: These you will delete and replace with the `displayHouses` function
//        houseLabelOne.text = "Ravenclaw"
//        houseLabelTwo.text = "Gryffindor"
//        houseLabelThree.text = "Hufflepuff"
//        houseLabelFour.text = "Slytherin"
        displayHouses()
        housesTableView.delegate = self
        housesTableView.dataSource = self
    }
    // MARK: - Functions
    func displayHouses() {
        var index = 0
        for house in hogwartsArray {
            if index == 0 {
                houseLabelOne.text = house
            } else if index == 1 {
                houseLabelTwo.text = house
            } else if index == 2 {
                houseLabelThree.text = house
            } else if index == 3 {
                houseLabelFour.text = house
            }
            index += 1
        }
    }
    // MARK: - TableView methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hogwarts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "houseCell", for: indexPath)
        let house = hogwarts[indexPath.row]
        //  ^^^^ This is basically doing the same thing as a for in loop
        let name = house["name"]
        let icon = UIImage(named: house["name"]!.lowercased())

        cell.textLabel?.text = name!
        cell.imageView?.image = icon!

        return cell
    }
}

