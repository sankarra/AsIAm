//
//  ShadowViewController.swift
//  AsIAm
//
//  Created by Martin Anquetil on 11/14/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class ShadowViewController: UIViewController {
    
    
    //right side, top to bottom
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
 
    
    //left side, top to bottom
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    
    @IBAction func button0Press(_ sender: Any) {
        activeImageIndex = 0;
        
        //styling
        selectButton(selectedButton: button0)
        
        //remove select of others
        button1.layer.borderWidth = 0
        button2.layer.borderWidth = 0
    }
    
    @IBAction func button1Press(_ sender: Any) {
        activeImageIndex = 1;
        
        //styling
        selectButton(selectedButton: button1)

        //remove select of others
        button0.layer.borderWidth = 0
        button2.layer.borderWidth = 0
    }
    
    @IBAction func button2Press(_ sender: Any) {
        activeImageIndex = 2;
        
        //styling
        selectButton(selectedButton: button2)
        
        //remove select of others
        button0.layer.borderWidth = 0
        button1.layer.borderWidth = 0
    }
    
    
    @IBAction func buttonAPress(_ sender: Any) {
        if(match(left: activeImageIndex, right: 1)){ //match
            setButtonImage(button: buttonA, image: correctImages[activeImageIndex])
            solved[activeImageIndex] = true;
            ifEndGame()
        }
    }
    
    @IBAction func buttonBPress(_ sender: Any) {
        if(match(left: activeImageIndex, right: 2)){ //match
            setButtonImage(button: buttonB, image: correctImages[activeImageIndex])
            solved[activeImageIndex] = true;
            ifEndGame()
        }
    }
    
    @IBAction func buttonCPress(_ sender: Any) {
        if(match(left: activeImageIndex, right: 3)){ //match
            setButtonImage(button: buttonC, image: correctImages[activeImageIndex])
            solved[activeImageIndex] = true;
            ifEndGame()
        }
    }
    
    




    var matchArray = [2,3,1]   //index is left image, element is right image, 0->b, 1->c, 2->a
    
    var activeImageIndex = -1
    var solved = [false, false, false] //which of the left images are successfully matched
    
    var words: [[Any]] = [];
    var dict: [[String: Any]] = []
    
    var leftButtons = [UIButton(), UIButton(), UIButton()] //placeholder
    var rightButtons = [UIButton(), UIButton(), UIButton()] //placeholder
    

    var correctImages = [UIImage(), UIImage(), UIImage()]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftButtons = [button0, button1, button2]
        rightButtons = [buttonA, buttonB, buttonC]

        var arrayOfPictureNames = ["", "", ""]
        
        //Modularizing memory cards
        dict = ModuleNavModel.shared.module(at: ModuleNavModel.shared.selectedModule)?["Subtopics"] as! [[String: Any]]
        let words = dict[ModuleNavModel.shared.selectedSubtopic]["QuizItems"] as! [[String: String]]
        print(words.count)

        var counter = 0;
        for word in words{
            //code to procedurally generate imageviews
            let picture = word["pictureURL"]
            arrayOfPictureNames[counter] = picture!
            counter += 1
            if (counter == 3) { break }
        }
        

        correctImages[0] = UIImage(named: arrayOfPictureNames[0])!
        setButtonImage(button: leftButtons[0], image: UIImage(named: arrayOfPictureNames[0]) as UIImage?)
        setButtonImage(button: rightButtons[1], image: UIImage(named: arrayOfPictureNames[0]+"shadow") as UIImage?)
        
        correctImages[1] = UIImage(named: arrayOfPictureNames[1])!
        setButtonImage(button: leftButtons[1], image: UIImage(named: arrayOfPictureNames[1]) as UIImage?)
        setButtonImage(button: rightButtons[2], image: UIImage(named: arrayOfPictureNames[1]+"shadow") as UIImage?)

        correctImages[2] = UIImage(named: arrayOfPictureNames[2])!
        setButtonImage(button: leftButtons[2], image: UIImage(named: arrayOfPictureNames[2]) as UIImage?)
        setButtonImage(button: rightButtons[0], image: UIImage(named: arrayOfPictureNames[2]+"shadow") as UIImage?)

        
        
        
        /*
         OLD CODE
         var blackCircle = UIImage(named: "Black-Circle.png") as UIImage?
        var greenCircle = UIImage(named: "Green-Circle.png") as UIImage?
        var blackSquare = UIImage(named: "Black-Square.png") as UIImage?
        var greenSquare = UIImage(named: "Green-Square.png") as UIImage?
        var blackTriangle = UIImage(named: "Black-Triangle.png") as UIImage?
        var greenTriangle = UIImage(named: "Green-Triangle.png") as UIImage?
        
        
        setButtonImage(button: buttonA, image: blackCircle)
        setButtonImage(button: button2, image: greenCircle)
        
        
        setButtonImage(button: buttonB, image: blackSquare)
        setButtonImage(button: button0, image: greenSquare)
        
        setButtonImage(button: buttonC, image: blackTriangle)
        setButtonImage(button: button1, image: greenTriangle)*/

        

        
        
        

    }
    
    
    func match(left: Int, right: Int) -> Bool
    {
        //match based on array
        return (matchArray[left] == right)
    }

    
    func setButtonImage(button: UIButton, image: UIImage?)
    {
        button.setImage(image, for: .normal)
        button.setImage(image, for: .highlighted)
    }
    
    
    func selectButton(selectedButton: UIButton)
    {
        selectedButton.layer.borderWidth = 2
        selectedButton.layer.borderColor = UIColor.black.cgColor
    }

    func ifEndGame(){
        if (solved[0] && solved[1] && solved[2]){
            //end game sequence
        }
    }

}

