//
//  QuizViewController.swift
//  MessDeck
//
//  Created by Samuel Rosas-Meza on 11/5/19.
//  Copyright © 2019 Samuel Rosas-Meza. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answer1: UIButton!
    @IBOutlet var answer2: UIButton!
    @IBOutlet var answer3: UIButton!
    @IBOutlet var answer4: UIButton!
    @IBOutlet var response: UILabel!
    var answer = ""
    
    var words: [[Any]] = [];

    var dict: [[String: Any]] = []
    
    @IBAction func checkAnswer1(sender: UIButton) {
        if (answer1.currentTitle == answer){
            correctResponse()
        }
        else {incorrectResponse()}
    }
    @IBAction func checkAnswer2(sender: UIButton) {
        if (answer2.currentTitle == answer){
            correctResponse()
        }
        else {incorrectResponse()}
    }
    @IBAction func checkAnswer3(sender: UIButton) {
        if (answer3.currentTitle == answer){
            correctResponse()
        }
        else {incorrectResponse()}
    }
    @IBAction func checkAnswer4(sender: UIButton) {
        if (answer4.currentTitle == answer){
            correctResponse()
        }
        else {incorrectResponse()}
    }
    
    func incorrectResponse() {
        response.text = "Oops, try again!"
    }
    func correctResponse() {
        response.text = "Correct!"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dict = ModuleNavModel.shared.module(at: ModuleNavModel.shared.selectedModule)?["Subtopics"] as! [[String: Any]]
        let subtopic = dict[ModuleNavModel.shared.selectedSubtopic]["SubtopicName"] as? String
        let words = dict[ModuleNavModel.shared.selectedSubtopic]["QuizItems"] as! [[String: String]]
        
        for word in words{
            //code to procedurally generate imageviews
            let question = word["question"]
            let correctAnswer = word["correctAnswer"]
            let wrongAnswer1 = word["wrongAnswer1"]
            let wrongAnswer2 = word["wrongAnswer2"]
            let wrongAnswer3 = word["wrongAnswer3"]
            
            questionLabel.text = question
            answer = correctAnswer!
            answer1.setTitle(wrongAnswer1, for: .normal)
            answer2.setTitle(wrongAnswer2, for: .normal)
            answer3.setTitle(wrongAnswer3, for: .normal)
            answer4.setTitle(correctAnswer, for: .normal)
            
            //print(question)
            //print(correctAnswer)

        }
        
        answer1.layer.cornerRadius = 15
        answer2.layer.cornerRadius = 15
        answer3.layer.cornerRadius = 15
        answer4.layer.cornerRadius = 15
        

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
