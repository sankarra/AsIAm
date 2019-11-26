//
//  UsersModel.swift
//  AsIAm
//
//  Created by Kevin Calaway on 10/3/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import Foundation
import UIKit

class UsersModel: NSObject {
    
    static let shared: UsersModel = UsersModel()
    var model: [UserProfile]
    var selectedIndex: Int
    let manager: FileManager
    var documents: String?
    
    //sets up initial values
    override init(){
        manager = FileManager.default
        let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first
        documents = url!.appendingPathComponent("Users.plist").path
        
        //this print statement will help you find Users.plist, which is located deep within a hidden folder on your computer. This simulates files being stored to the documents folder on your iPhone or iPad, so do not attempt to move it.
        print("plist location: ", documents)
        self.model = []
        selectedIndex = -1
        super.init()
        populateModel()
    }
    
    //Gets data from internal storage
    func populateModel(){
        if manager.fileExists(atPath: documents!){
            let usersArray = NSArray(contentsOfFile: documents!)
            if let usersA = usersArray{
                for dict in usersA{
                    let userDict:[String:NSObject] = dict as! [String : NSObject]
                    let name = userDict["name"] as! String
                    let progress = userDict["progress"] as! Dictionary<String,Dictionary<String,Dictionary<String,Bool>>>
                    let avatar = userDict["avatar"] as! String
                    let gender = userDict["gender"] as! Dictionary<String,Double>
                    model.append(UserProfile(name: name,progress: progress,avatar: avatar, gender: gender));
                }
            }
        }
    }
    
    //returns the size of the model
    func numberOfUsers() -> Int{
        return model.count
    }
    
    //Writes a user to internal storage
    func insert(user: UserProfile){
        model.append(user);
        var usersArray = [[String:Any]]()
            for user in model{
                let data = ["name": user.name,
                            "progress": user.progress,
                            "avatar": user.avatar,
                            "gender": user.gender] as [String : Any]
                usersArray.append(data)
            }
            (usersArray as NSArray).write(toFile: documents!, atomically: true)
        
    }
    
    //Saves the current state of the user model. This is called primarily by UnicornViewController.swift for now, but will be called more often as user progress is implemented.
    func save(){
        var usersArray = [[String:Any]]()
        for user in model{
            let data = ["name": user.name,
                        "progress": user.progress,
                        "avatar": user.avatar,
                        "gender": user.gender] as [String : Any]
            usersArray.append(data)
        }
        (usersArray as NSArray).write(toFile: documents!, atomically: true)
    }
    
    //removes a user
    func remove(at index: Int){
        model.remove(at: index)
    }
    
    //Returns the user at a given index
    func user(at index: Int) -> UserProfile{
        if (index >= model.count){
            return UserProfile(name: "Guest", avatar: "")
        }
        return model[index]
    }
    
    
    
}

