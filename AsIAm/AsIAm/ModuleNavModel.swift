//
//  ModuleNavModel.swift
//  AsIAm
//
//  Created by Kevin Calaway on 10/3/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import Foundation
import UIKit

class ModuleNavModel: NSObject {
    
    static let shared: ModuleNavModel = ModuleNavModel()
    var model: [Dictionary<String,Any>]
    var selectedModule: Int
    var selectedSubtopic: Int
    let manager: FileManager
    var documents: String?
    
    //sets up initial values
    override init(){
        manager = FileManager.default
        documents = Bundle.main.path(forResource: "ModuleInfo", ofType: "plist")
        self.model = []
        selectedModule = 0
        selectedSubtopic = 0
        super.init()
        populateModel()
    }
    
    //Gets data from ModuleInfo.plist and reads it into the singleton.
    func populateModel(){
        if manager.fileExists(atPath: documents!){
            let modulesArray = NSArray(contentsOfFile: documents!)
            if let modulesA = modulesArray{
                for dict in modulesA{
                    model.append(dict as! [String : Any])
                }
            }
        }
    }
    
    //returns the size of the model
    func numberOfModules() -> Int{
        return model.count
    }
    
    //Returns the module at a given index
    func module(at index: Int) -> Dictionary<String,Any>?{
        if (index >= model.count){
            return nil
        }
        return model[index]
    }
    
    
    
}

