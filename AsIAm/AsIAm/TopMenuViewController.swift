//
//  TopMenuViewController.swift
//  AsIAm
//
//  Created by Anup Sankarraman on 9/19/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class TopMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    @IBOutlet weak var intamacyCircle: UIImageView!
    @IBOutlet weak var sexualIdentityCircle: UIImageView!
    @IBOutlet weak var powerCircle: UIImageView!
    @IBOutlet weak var sensualityCircle: UIImageView!
    @IBOutlet weak var sexualHealthCircle: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
