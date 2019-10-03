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
    
    init(name: String){
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
        
    }
    
    init (name:String, progress:[String : [String : [String : Bool]]]){
        self.name = name;
        self.progress = progress;
    }
}
