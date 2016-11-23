//
//  AcademicMananger.swift
//  CarnetNotes
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import Foundation

class AcademicManager{
    
    private static var s_instance:AcademicManager?
    
    public static var instance:AcademicManager {
        if s_instance == nil {
            s_instance = AcademicManager()
        }
        return s_instance!
    }
    
    private static let ACADEMIC_KEY:String = "Academic"
    private let _userDefaults:UserDefaults

    private init() {
        _userDefaults = UserDefaults.standard
        let defaultsValues = [
            AcademicManager.ACADEMIC_KEY:["Maths": 15, "Anglais": 12, "Informatique": 18]
        ]
        _userDefaults.register(defaults: defaultsValues)
    }
    
    func getAcademicArray() -> [String:Int]{
        return _userDefaults.object(forKey: AcademicManager.ACADEMIC_KEY) as! [String:Int]
    }
    
    func setAcademicArray(academicArray:[String:Int]){
        _userDefaults.set(academicArray, forKey: AcademicManager.ACADEMIC_KEY)
    }
    
}
