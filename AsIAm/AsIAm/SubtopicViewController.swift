//
//  SubtopicViewController.swift
//  AsIAm
//
//  Created by Kevin Calaway on 10/18/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

/*
 Author's note: This class was deprecated by a features request change where "Learn" became a module-level action and each topic's "Play" became a single activity. However, at the last minute the stakeholder began to ask for two or three activities for certain subtopics, and so I leave this class here to be adapted to the new features.
 */
class SubtopicViewController: UIViewController {
    
    var dict: [[String: Any]] = []

    @IBOutlet weak var subtopicLabel: UILabel!
    
    /* Sends users to the correct activity respect to the information gleaned from ModuleInfo.plist
    */
    @IBAction func playButton(_ sender: Any) {
        let gameType = dict[ModuleNavModel.shared.selectedSubtopic]["GameType"] as? String
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
    override func viewDidLoad() {
        super.viewDidLoad()
        dict = ModuleNavModel.shared.module(at: ModuleNavModel.shared.selectedModule)?["Subtopics"] as! [[String: Any]]
        let subtopic = dict[ModuleNavModel.shared.selectedSubtopic]["SubtopicName"] as? String
        let words = dict[ModuleNavModel.shared.selectedSubtopic]["QuizItems"]
        subtopicLabel.text = subtopic
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
