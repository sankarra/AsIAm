//
//  ModuleViewController.swift
//  AsIAm
//
//  Created by Anup Sankarraman on 9/19/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit



class ModuleViewController: UIViewController {

    @IBOutlet weak var moduleCloud: UIImageView!
    @IBOutlet weak var moduleDescLabel: UITextView!
    @IBOutlet weak var moduleNameLabel: UILabel!
    
    @IBOutlet weak var subtopicButton1: UIButton!
    @IBOutlet weak var subtopicButton2: UIButton!
    @IBOutlet weak var subtopicButton3: UIButton!
    @IBOutlet weak var subtopicButton4: UIButton!
    @IBOutlet weak var subtopicButton5: UIButton!
    @IBOutlet weak var subtopicButton6: UIButton!
    @IBOutlet weak var subtopicButton7: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonArray: [UIButton] = [subtopicButton1, subtopicButton2, subtopicButton3, subtopicButton4, subtopicButton5, subtopicButton6, subtopicButton7]
        let dict = ModuleNavModel.shared.module(at: ModuleNavModel.shared.selectedModule)?["Subtopics"] as! [[String: Any]]
        for (index,button) in buttonArray.enumerated(){
            button.setTitle(dict[index]["SubtopicName"] as? String, for: .normal)
        }
        moduleNameLabel.text = ModuleNavModel.shared.module(at: ModuleNavModel.shared.selectedModule)?["ModuleName"] as? String
        moduleDescLabel.text = "placeholder text"
        
        let moduleNum = ModuleNavModel.shared.selectedModule
        switch moduleNum{
        case 0:
            moduleCloud.image = UIImage(named: "sex_repro_cloud")
            break
        case 1:
            moduleCloud.image = UIImage(named: "power_sex_cloud")
            break
        case 2:
            moduleCloud.image = UIImage(named: "sex_identity_cloud")
            break
        case 3:
            moduleCloud.image = UIImage(named: "sensulaity_cloud")
            break
        default:
            moduleCloud.image = UIImage(named: "intimacy_cloud")
            break
        }

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "subtopic0"){
            ModuleNavModel.shared.selectedSubtopic = 0
        }
        if (segue.identifier == "subtopic1"){
            ModuleNavModel.shared.selectedSubtopic = 1
        }
        if (segue.identifier == "subtopic2"){
            ModuleNavModel.shared.selectedSubtopic = 2
        }
        if (segue.identifier == "subtopic3"){
            ModuleNavModel.shared.selectedSubtopic = 3
        }
        if (segue.identifier == "subtopic4"){
            ModuleNavModel.shared.selectedSubtopic = 4
        }
        if (segue.identifier == "subtopic5"){
            ModuleNavModel.shared.selectedSubtopic = 5
        }
        if (segue.identifier == "subtopic6"){
            ModuleNavModel.shared.selectedSubtopic = 6
        }
    }
    

   
}
