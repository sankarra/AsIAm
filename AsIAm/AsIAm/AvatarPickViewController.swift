//
//  AvatarPickViewController.swift
//  AsIAm
//
//  Created by Anup Sankarraman on 10/3/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class AvatarPickViewController: UIViewController {

    
    @IBAction func robertAvatar(_ sender: Any) {
        UsersModel.shared.insert(user: UserProfile(name: myVariables.userName, avatar: "Robert"))
        
    }
    
    
    @IBAction func emmaAvatar(_ sender: Any) {
        UsersModel.shared.insert(user: UserProfile(name: myVariables.userName, avatar: "Emma"))
    }
    @IBAction func nathanAvatar(_ sender: Any) {
        UsersModel.shared.insert(user: UserProfile(name: myVariables.userName, avatar: "Nathan"))
    }
    
    @IBAction func ashleyAvatar(_ sender: Any) {
        UsersModel.shared.insert(user: UserProfile(name: myVariables.userName, avatar: "Ashley"))
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
