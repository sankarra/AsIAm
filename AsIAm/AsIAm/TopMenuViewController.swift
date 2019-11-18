//
//  TopMenuViewController.swift
//  AsIAm
//
//  Created by Anup Sankarraman on 9/19/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class TopMenuViewController: UIViewController {

    @IBOutlet weak var avatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avatar.image = UIImage(named: "\(UsersModel.shared.user(at: UsersModel.shared.selectedIndex).avatar)profile")
        intamacyCircle.layer.masksToBounds = true
        intamacyCircle.layer.cornerRadius = intamacyCircle.bounds.width / 2
        
        sexualIdentityCircle.layer.masksToBounds = true
        sexualIdentityCircle.layer.cornerRadius = sexualIdentityCircle.bounds.width/2
        
        powerCircle.layer.masksToBounds = true
        powerCircle.layer.cornerRadius = powerCircle.bounds.width/2
        
        sensualityCircle.layer.masksToBounds = true
        sensualityCircle.layer.cornerRadius = sensualityCircle.bounds.width/2
        
        sexualHealthCircle.layer.masksToBounds = true
        sexualHealthCircle.layer.cornerRadius = sexualHealthCircle.bounds.width/2

        // Do any additional setup after loading the view.
    }
    
    //All outlets
    @IBOutlet weak var intamacyCircle: UIButton!
    @IBOutlet weak var sexualIdentityCircle: UIButton!
    @IBOutlet weak var powerCircle: UIButton!
    @IBOutlet weak var sensualityCircle: UIButton!
    @IBOutlet weak var sexualHealthCircle: UIButton!
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "healthSegue"){
            ModuleNavModel.shared.selectedModule = 0
        }
        if (segue.identifier == "powerSegue"){
            ModuleNavModel.shared.selectedModule = 1
        }
        if (segue.identifier == "identSegue"){
            ModuleNavModel.shared.selectedModule = 2
        }
        if (segue.identifier == "sensuSegue"){
            ModuleNavModel.shared.selectedModule = 3
        }
        if (segue.identifier == "intimSegue"){
            ModuleNavModel.shared.selectedModule = 4
        }
    }

}
