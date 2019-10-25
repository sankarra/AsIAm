//
//  SubtopicViewController.swift
//  AsIAm
//
//  Created by Student on 10/18/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class SubtopicViewController: UIViewController {
    
    var dict: [[String: Any]] = []

    @IBOutlet weak var subtopicLabel: UILabel!
    
    @IBAction func playButton(_ sender: Any) {
        let gameType = dict[ModuleNavModel.shared.selectedSubtopic]["GameType"] as! String
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
        default:
            break;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dict = ModuleNavModel.shared.module(at: ModuleNavModel.shared.selectedModule)?["Subtopics"] as! [[String: Any]]
        let subtopic = dict[ModuleNavModel.shared.selectedSubtopic]["SubtopicName"] as? String
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
