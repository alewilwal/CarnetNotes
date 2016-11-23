//
//  AcademicsTableViewController.swift
//  CarnetNotes
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//
 
import UIKit

class AcademicsTableViewController: UITableViewController {
    
    let userDefaultsManager:UserDefaults = UserDefaults.standard
    var _academicsArray:[Academic] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _academicsArray.append(Academic(name: "Maths", average: 15, tests: ["Contrôle 1er Trimestre":14, "Contrôle 2eme Trimestre":13, "Contrôle 3eme Trimestre":15]))
        _academicsArray.append(Academic(name: "Français", average: 10, tests: ["Contrôle 1er Trimestre":14, "Contrôle 2eme Trimestre":13, "Contrôle 3eme Trimestre":15]))
        _academicsArray.append(Academic(name: "Histoire", average: 12, tests: ["Contrôle 1er Trimestre":14, "Contrôle 2eme Trimestre":13, "Contrôle 3eme Trimestre":15]))
        _academicsArray.append(Academic(name: "Anglais", average: 14, tests: ["Contrôle 1er Trimestre":14, "Contrôle 2eme Trimestre":13, "Contrôle 3eme Trimestre":15]))
        _academicsArray.append(Academic(name: "Espagnole", average: 16, tests: ["Contrôle 1er Trimestre":14, "Contrôle 2eme Trimestre":13, "Contrôle 3eme Trimestre":15]))
        _academicsArray.append(Academic(name: "Informatique", average: 18, tests: ["Contrôle 1er Trimestre":14, "Contrôle 2eme Trimestre":13, "Contrôle 3eme Trimestre":15]))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return _academicsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "academic-average")
        let academic:Academic = _academicsArray[indexPath.row]
        
        if let label = cell.textLabel {
            label.text = academic.name
        }
        
        if let detailLabel = cell.detailTextLabel {
            detailLabel.text = "\(academic.average)"
        }
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showNotes" {
            if let cell = sender as? UITableViewCell {
                if let indexPath = self.tableView.indexPath(for: cell) {
                    let selectedAcademic = _academicsArray[indexPath.row]
                    
                    let TestsTableViewController:TestsTableViewController = segue.destination as! TestsTableViewController
                    TestsTableViewController._academic = selectedAcademic
                }
            }
        }
    }
}
