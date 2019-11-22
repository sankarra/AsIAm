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
    let answer = "C"
    
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
        answer1.layer.cornerRadius = 15
        answer2.layer.cornerRadius = 15
        answer3.layer.cornerRadius = 15
        answer4.layer.cornerRadius = 15
        
        answer1.setTitle("A", for: .normal)
        answer2.setTitle("B", for: .normal)
        answer3.setTitle("C", for: .normal)
        answer4.setTitle("D", for: .normal)

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
