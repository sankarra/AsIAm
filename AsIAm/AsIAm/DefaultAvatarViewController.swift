//
//  DefaultAvatarViewController.swift
//  AsIAm
//
//  Created by Aahad Patel on 11/22/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class DefaultAvatarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        defaultAvatar.layer.cornerRadius = 15

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var defaultAvatar: UIButton!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
