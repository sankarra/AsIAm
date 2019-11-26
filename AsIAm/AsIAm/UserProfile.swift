//
//  UserProfile.swift
//  AsIAm
//
//  Created by Kevin Calaway on 10/3/19.
//  Copyright © 2019 Kevin Calaway. All rights reserved.
//

import Foundation

class UserProfile{
    
    //Keeps track of user's name, avatar, and gender, and contains a basic outline for keeping track of a user's progress, though no functionality for this has been implemented.
    //TODO: Implement user progress.
    var name: String
    var progress: Dictionary<String,Dictionary<String,Dictionary<String,Bool>>>
    var avatar: String
    var gender: Dictionary<String,Double>
    
    init(name: String, avatar: String){
        self.name = name
        //The default progress where no user has completed anything.
        progress = ["mod1":
                    ["topic1":
                        ["learn1":false,
                        "learn2":false,
                        "play1":false,
                        "play2":false]
                    ,
                    "topic2":
                        ["learn1":false,
                        "learn2":false,
                        "play1":false,
                        "play2":false]
                    ,
                    "topic3":
                        ["learn1":false,
                         "learn2":false,
                         "play1":false,
                         "play2":false]
                    ,
                    "topic4":
                        ["learn1":false,
                         "learn2":false,
                         "play1":false,
                         "play2":false]
                    ,
                    "topic5":
                        ["learn1":false,
                         "learn2":false,
                         "play1":false,
                         "play2":false]
                    ],
                    "mod2":
                        ["topic1":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic2":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic3":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic4":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic5":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                    ],
                    "mod3":
                        ["topic1":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic2":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic3":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic4":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic5":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                    ],
                    "mod4":
                        ["topic1":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic2":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic3":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic4":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic5":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                    ],
                    "mod5":
                        ["topic1":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic2":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic3":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic4":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                            ,
                         "topic5":
                            ["learn1":false,
                             "learn2":false,
                             "play1":false,
                             "play2":false]
                    ]
                ]
        self.avatar = avatar
        //The default gender before they've started anything.
        self.gender = ["mascIdent":0.5,
                       "femIdent":0.5,
                       "otherIdent":0.5,
                       "mascExpress":0.5,
                       "femExpress":0.5,
                       "otherExpress":0.5,
                       "sex":0.0,
                       "mascPhys":0.5,
                       "femPhys":0.5,
                       "otherPhys":0.5,
                       "mascEmo":0.5,
                       "femEmo":0.5,
                       "otherEmo":0.5]
    }
    
    //this is used to fetch user profiles from Users.plist, i.e. existing users, and interact with them.
    init (name:String, progress:[String : [String : [String : Bool]]], avatar:String, gender: [String: Double]){
        self.name = name;
        self.progress = progress;
        self.avatar = avatar;
        self.gender = gender;
    }
    
}
