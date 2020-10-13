//
//  TableViewController.swift
//  MyFirstApp
//
//  Created by RYAN GREENBURG on 8/28/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return WizardController.wizards.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wizardCell", for: indexPath)
        let wizard = WizardController.wizards[indexPath.row]
        
        cell.textLabel?.text = wizard.name
        cell.detailTextLabel?.text = wizard.house

        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailViewController",
            let viewController = segue.destination as? ViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            let wizardToDisplay = WizardController.wizards[indexPath.row]
            viewController.wizard = wizardToDisplay
        }
    }
}
