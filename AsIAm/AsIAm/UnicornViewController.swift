//
//  UnicornViewController.swift
//  AsIAm
//
//  Created by Student on 11/7/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class UnicornViewController: ViewController {

    @IBOutlet weak var emotionallyAttractView: UIView!
    @IBOutlet weak var physicalAttractView: UIView!
    @IBOutlet weak var sexAssignedView: UIView!
    @IBOutlet weak var genderIdentView: UIView!
    @IBOutlet weak var genderExpressView: UIView!
    @IBOutlet weak var scrollPaneOutlet: UIScrollView!
    
    @IBOutlet weak var mascIdentSlider: UISlider!
    @IBOutlet weak var femIdentSlider: UISlider!
    @IBOutlet weak var otherIdentSlider: UISlider!
    @IBOutlet weak var mascExpressSlider: UISlider!
    @IBOutlet weak var femExpressSlider: UISlider!
    @IBOutlet weak var otherExpressSlider: UISlider!
    @IBOutlet weak var sexSelector: UISegmentedControl!
    @IBOutlet weak var mascPhysSlider: UISlider!
    @IBOutlet weak var femPhysSlider: UISlider!
    @IBOutlet weak var otherPhysSlider: UISlider!
    @IBOutlet weak var mascEmoSlider: UISlider!
    @IBOutlet weak var femEmoSlider: UISlider!
    @IBOutlet weak var otherEmoSlider: UISlider!
    
    @IBAction func saveButtonDidPress(_ sender: Any) {
        let currUser = UsersModel.shared.user(at: UsersModel.shared.selectedIndex)
        currUser.gender = ["mascIdent":Double(mascIdentSlider!.value),
        "femIdent":Double(femIdentSlider!.value),
        "otherIdent":Double(otherIdentSlider!.value),
        "mascExpress":Double(mascExpressSlider!.value),
        "femExpress":Double(femExpressSlider!.value),
        "otherExpress":Double(otherExpressSlider!.value),
        "sex":Double(sexSelector.selectedSegmentIndex),
        "mascPhys":Double(mascPhysSlider!.value),
        "femPhys":Double(femPhysSlider!.value),
        "otherPhys":Double(otherPhysSlider!.value),
        "mascEmo":Double(mascEmoSlider!.value),
        "femEmo":Double(femEmoSlider!.value),
        "otherEmo":Double(otherEmoSlider!.value)]
        UsersModel.shared.save()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let contentWidth = scrollPaneOutlet.bounds.width
        let contentHeight = scrollPaneOutlet.bounds.height * 2
        scrollPaneOutlet.contentSize = CGSize(width: contentWidth, height: contentHeight * 2)
        let currUser = UsersModel.shared.user(at: UsersModel.shared.selectedIndex)
        mascIdentSlider.value = Float(currUser.gender["mascIdent"]!)
        femIdentSlider.value = Float(currUser.gender["femIdent"]!)
        otherIdentSlider.value = Float(currUser.gender["otherIdent"]!)
        mascExpressSlider.value = Float(currUser.gender["mascExpress"]!)
        femExpressSlider.value = Float(currUser.gender["femExpress"]!)
        otherExpressSlider.value = Float(currUser.gender["otherExpress"]!)
        sexSelector.selectedSegmentIndex = Int(currUser.gender["sex"]!)
        mascPhysSlider.value = Float(currUser.gender["mascPhys"]!)
        femPhysSlider.value = Float(currUser.gender["femPhys"]!)
        otherPhysSlider.value = Float(currUser.gender["otherPhys"]!)
        mascEmoSlider.value = Float(currUser.gender["mascEmo"]!)
        femEmoSlider.value = Float(currUser.gender["femEmo"]!)
        otherEmoSlider.value = Float(currUser.gender["otherEmo"]!)
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
