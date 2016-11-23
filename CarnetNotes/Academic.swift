//
//  Academic.swift
//  CarnetNotes
//
//  Created by imac on 23/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import Foundation

class Academic {
    var name:String
    var average:Int
    var tests:[String:Int]
    
    init(name:String, average:Int, tests:[String:Int]) {
        self.name = name
        self.average = average
        self.tests = tests
    }
}
