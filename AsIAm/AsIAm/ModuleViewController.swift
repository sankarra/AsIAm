//
//  ModuleViewController.swift
//  AsIAm
//
//  Created by Anup Sankarraman on 9/19/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit



class ModuleViewController: UIViewController {

    @IBOutlet weak var avatarImage: UIImageView!
    
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
        
        subtopicButton1.layer.cornerRadius = 15
//        subtopicButton1.layer.borderWidth = 1
        
        subtopicButton2.layer.cornerRadius = 15
//        subtopicButton2.layer.borderWidth = 1
        
        subtopicButton3.layer.cornerRadius = 15
//        subtopicButton3.layer.borderWidth = 1
        
        subtopicButton4.layer.cornerRadius = 15
//        subtopicButton4.layer.borderWidth = 1
        
        subtopicButton5.layer.cornerRadius = 15
//        subtopicButton5.layer.borderWidth = 1
        
        subtopicButton6.layer.cornerRadius = 15
//        subtopicButton6.layer.borderWidth = 1
        
        subtopicButton7.layer.cornerRadius = 15
//        subtopicButton7.layer.borderWidth = 1
        
        avatarImage.image = UIImage(named: "\(UsersModel.shared.user(at: UsersModel.shared.selectedIndex).avatar)study")
        
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
        // light purple
        case 0:
            view.backgroundColor = UIColor(red: 230.0/255.0, green: 230.0/255.0, blue: 250.0/255.0, alpha: 100)
            break
        // power and sexualization
        // peach
        case 1:
            view.backgroundColor = UIColor(red: 255.0/255.0, green: 218.0/255.0, blue: 185.0/255.0, alpha: 100)
            break
        //sexual identity
        // mustard
        case 2:
            view.backgroundColor = UIColor(red: 255.0/255.0, green: 219.0/255.0, blue: 88.0/255.0, alpha: 100)
            break
        // sensuality
        // tan
        case 3:
            view.backgroundColor = UIColor(red: 210.0/255.0, green: 180.0/255.0, blue: 140.0/255.0, alpha: 100)
            break
        // intimacy
        default:
            
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
