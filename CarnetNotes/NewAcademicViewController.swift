//
//  NewAcademicViewController.swift
//  CarnetNotes
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import UIKit

class NewAcademicViewController: UIViewController {


    @IBOutlet weak var ui_textFieldNewAcademic: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // Hide View
    @IBAction func hideNewAcademicButtonPressed() {
        dismiss(animated: true, completion: nil)
    }


    @IBAction func saveNewAcademic() {
        
    }
    
    

    
    
}
