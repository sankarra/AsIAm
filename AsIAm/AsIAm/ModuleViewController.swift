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
        moduleDescLabel.text = "The exchange of emotional closeness between people"
        
        let moduleNum = ModuleNavModel.shared.selectedModule
        switch moduleNum{
        // sexual health and reproduction
        case 0:
            view.backgroundColor = UIColor(red: 246.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 100)
            moduleCloud.image = UIImage(named: "sex_repro_cloud")
            break
        // power and sexualization
        case 1:
            view.backgroundColor = UIColor(red: 246.0/255.0, green: 244.0/255.0, blue: 220.0/255.0, alpha: 100)
            moduleCloud.image = UIImage(named: "power_sex_cloud")
            break
        //sexual identity
        case 2:
            view.backgroundColor = UIColor(red: 246.0/255.0, green: 220.0/255.0, blue: 246.0/255.0, alpha: 100)
            moduleCloud.image = UIImage(named: "sex_identity_cloud")
            break
        // sensuality
        case 3:
            view.backgroundColor = UIColor(red: 220.0/255.0, green: 240.0/255.0, blue: 246.0/255.0, alpha: 100)
            moduleCloud.image = UIImage(named: "sensulaity_cloud")
            break
        // intimacy
        default:
            moduleCloud.image = UIImage(named: "intimacy_cloud")
            break
        }

        // Do any additional setup after loading the view.
    }
    
    func transition(_ subtopic: Int){
        ModuleNavModel.shared.selectedSubtopic = subtopic
        let gameType = (ModuleNavModel.shared.module(at: ModuleNavModel.shared.selectedModule)?["Subtopics"] as! [[String: Any]]) [ModuleNavModel.shared.selectedSubtopic]["GameType"] as? String
        switch gameType{
        case "Identify":
            self.performSegue(withIdentifier: "identifySegue", sender: self)
            break;
        case "Matching":
            self.performSegue(withIdentifier: "matchingSegue", sender: self)
            break;
        case "Memory":
            self.performSegue(withIdentifier: "memorySegue", sender: self)
            break;
        case "MultipleChoice":
            self.performSegue(withIdentifier: "multipleChoiceSegue", sender: self)
            break;
        case "SetUp":
            self.performSegue(withIdentifier: "setUpSegue", sender: self)
            break;
        case "Unicorn":
            self.performSegue(withIdentifier: "unicornSegue", sender: self)
            break;
        default:
            break;
        }
    }

    @IBAction func subtopic1DidClick(_ sender: Any) {
        transition(0)
    }
    
    
    @IBAction func subtopic2DidClick(_ sender: Any) {
        transition(1)
    }
    
    
    @IBAction func subtopic3DidClick(_ sender: Any) {
        transition(2)
    }
    
    @IBAction func subtopic4DidClick(_ sender: Any) {
        transition(3)
    }
    
    @IBAction func subtopic5DidClick(_ sender: Any) {
        transition(4)
    }
    
    @IBAction func subtopic6DidClick(_ sender: Any) {
        transition(5)
    }
    
    @IBAction func subtopic7DidClick(_ sender: Any) {
        transition(6)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    //}
    

   
}
