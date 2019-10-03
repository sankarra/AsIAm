//
//  UsersModel.swift
//  AsIAm
//
//  Created by Student on 10/3/19.
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
        self.model = []
        selectedIndex = -1
        super.init()
        populateModel()
    }
    
    //Gets data from FireStore and internal storage, if any
    func populateModel(){
        if manager.fileExists(atPath: documents!){
            let usersArray = NSArray(contentsOfFile: documents!)
            if let usersA = usersArray{
                for dict in usersA{
                    let userDict:[String:NSObject] = dict as! [String : NSObject]
                    let name = userDict["name"] as! String
                    let progress = userDict["progress"] as! Dictionary<String,Dictionary<String,Dictionary<String,Bool>>>
                    let avatar = userDict["avatar"] as! String
                    model.append(UserProfile(name: name,progress: progress,avatar: avatar));
                }
            }
        }
    }
    
    //returns the size of the model
    func numberOfUsers() -> Int{
        return model.count
    }
    
    //Writes a song to FireStore or, if that fails, to internal storage
    func insert(user: UserProfile){
        model.append(user);
        var usersArray = [[String:Any]]()
            for user in model{
                let data = ["name": user.name,
                            "progress": user.progress,
                            "avatar": user.avatar] as [String : Any]
                usersArray.append(data)
            }
            (usersArray as NSArray).write(toFile: documents!, atomically: true)
    }
    
    //removes a song
    func remove(at index: Int){
        model.remove(at: index)
    }
    
    //Returns the song at a given index
    func user(at index: Int) -> UserProfile{
        if (index >= model.count){
            return UserProfile(name: "Guest", avatar: "")
        }
        return model[index]
    }
    
    
    
}

