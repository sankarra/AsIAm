//
//  UserProfile.swift
//  AsIAm
//
//  Created by Student on 10/3/19.
//  Copyright © 2019 Kevin Calaway. All rights reserved.
//

import Foundation

class UserProfile{
    
    var name: String
    var progress: Dictionary<String,Dictionary<String,Dictionary<String,Bool>>>
    var avatar: String
    var gender: Dictionary<String,Double>
    
    init(name: String, avatar: String){
        self.name = name
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
    
    init (name:String, progress:[String : [String : [String : Bool]]], avatar:String, gender: [String: Double]){
        self.name = name;
        self.progress = progress;
        self.avatar = avatar;
        self.gender = gender;
    }
    
}
