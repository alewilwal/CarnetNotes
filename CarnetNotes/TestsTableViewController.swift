//
//  TestsTableViewController.swift
//  CarnetNotes
//
//  Created by imac on 23/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import UIKit

class TestsTableViewController: UITableViewController {
    
    var _academic:Academic?
    var _testsArray:[String:Int]!
    var testsTable:[String]?
    var notesTable:[Int]?
    
    override func viewWillAppear(_ animated: Bool) {
        if let academic = _academic {
            _testsArray = academic.tests
            testsTable = [String](_testsArray.keys)
            notesTable = [Int](_testsArray.values)
            print("TestArray : \(_testsArray)")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return _testsArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "test-note", for: indexPath)
        
        if let label = cell.textLabel {
            label.text = testsTable?[indexPath.row]
        }
        
        if let detailLabel = cell.detailTextLabel {
            detailLabel.text = "\(notesTable![indexPath.row])"
        }
        
        return cell
    }
   
}
