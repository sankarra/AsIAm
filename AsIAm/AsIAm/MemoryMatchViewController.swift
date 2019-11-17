//
//  MemoryMatchViewController.swift
//  AsIAm
//
//  Created by Anup Sankarraman on 10/25/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class MemoryMatchViewController: UIViewController {

    @IBOutlet weak var successLabel: UILabel!
    @IBOutlet weak var image1Outlet: UIButton!
    @IBOutlet weak var image2Outlet: UIButton!
    @IBOutlet weak var image3Outlet: UIButton!
    @IBOutlet weak var image4Outlet: UIButton!
    @IBOutlet weak var image5Outlet: UIButton!
    @IBOutlet weak var image6Outlet: UIButton!
    @IBOutlet weak var image7Outlet: UIButton!
    @IBOutlet weak var image8Outlet: UIButton!
    @IBOutlet weak var image9Outlet: UIButton!
    @IBOutlet weak var image10Outlet: UIButton!
    
   
    var arrayOfOutlets: [UIButton] = []
    var arrayOfPictureNames: [String] = []
    var cardsOpen = 0
    var arrayOfOpenCards: [Int] = []
    var totalSuccessfulCards = 0
    var timer = Timer()
    var timer1sec = 1
    var words: [[Any]] = [];
    var dict: [[String: Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        successLabel.isHidden = true

        arrayOfOutlets = [image1Outlet, image2Outlet, image3Outlet, image4Outlet, image5Outlet, image6Outlet, image7Outlet, image8Outlet, image9Outlet, image10Outlet]
        arrayOfPictureNames = ["Asset 1", "Asset 1", "Asset 2", "Asset 2", "Asset 3", "Asset 3", "Asset 4", "Asset 4", "temp_av1", "temp_av1"]

        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)

        //Modularizing memory cards
        
        dict = ModuleNavModel.shared.module(at: ModuleNavModel.shared.selectedModule)?["Subtopics"] as! [[String: Any]]
//        let subtopic = dict[ModuleNavModel.shared.selectedSubtopic]["SubtopicName"] as? String
        let words = dict[ModuleNavModel.shared.selectedSubtopic]["QuizItems"] as! [[String: String]]
        print(words.count)

        var counter = 0;
        for word in words{
            //code to procedurally generate imageviews
            let picture = word["pictureURL"]
            arrayOfPictureNames[counter] = picture!
            arrayOfPictureNames[counter+1] = picture!
            counter += 2
            if (counter == 10)
            {
                break
            }
        }
        arrayOfPictureNames.shuffle()

        var i = 1
        while (i <= arrayOfOutlets.count)
        {
            arrayOfOutlets[i-1].setImage(UIImage(named: arrayOfPictureNames[i-1]), for: UIControl.State.normal)

            i = i+1
        }
    }
    
    @objc func fireTimer() {
        print("Timer fired!")
        var a = 0
        if (timer1sec == 1)
        {
            while (a < arrayOfOutlets.count)
            {
                arrayOfOutlets[a].setImage(UIImage(named: "blackCircle"), for: UIControl.State.normal)
                a += 1
            }
            timer1sec = 0
        }
        else
        {
            for element in arrayOfOutlets
            {
                element.setImage(UIImage(named: "blackCircle"), for: UIControl.State.normal)
            }
        }
    }
    
    func checkCards(i: Int)
    {
        arrayOfOpenCards.append(i)
        
        if (arrayOfOpenCards.count == 2)
        {
            if (arrayOfPictureNames[arrayOfOpenCards[0]-1] == arrayOfPictureNames[arrayOfOpenCards[1]-1])
            {
                arrayOfOutlets[arrayOfOpenCards[0]-1].isHidden = true
                arrayOfOutlets[arrayOfOpenCards[1]-1].isHidden = true
//                arrayOfOutlets[arrayOfOpenCards[0]-1].setImage(UIImage(named: "blackCircle"), for: UIControl.State.normal)
//                arrayOfOutlets[arrayOfOpenCards[1]-1].setImage(UIImage(named: "blackCircle"), for: UIControl.State.normal)
                totalSuccessfulCards += 2
                if (totalSuccessfulCards == 10)
                {
                    //User has successfully matched all cards
                    successLabel.isHidden = false
                }
                
                
            }
            cardsOpen = 0
            arrayOfOpenCards.remove(at: 1)
            arrayOfOpenCards.remove(at: 0)
        }
        else
        {
            //2 cards arent flipped over
        }
    }
    @IBAction func image1Action(_ sender: Any) {
        if (cardsOpen > 2)
        {
            //Don't do anything but leave error message
        }
        else
        {
            cardsOpen += 1
            image1Outlet.setImage(UIImage(named: arrayOfPictureNames[0]), for: UIControl.State.normal)
            checkCards(i: 1)
        }
        
    }
    
    @IBAction func image2Action(_ sender: Any) {
        if (cardsOpen > 2)
        {
            //Dont do anything
        }
        else
        {
            cardsOpen += 1
            image2Outlet.setImage(UIImage(named: arrayOfPictureNames[1]), for: UIControl.State.normal)
            checkCards(i: 2)
        }
        
    }
    
    @IBAction func image3Action(_ sender: Any) {
        if (cardsOpen > 2)
        {
            //Dont do anything
        }
        else
        {
            cardsOpen += 1
            image3Outlet.setImage(UIImage(named: arrayOfPictureNames[2]), for: UIControl.State.normal)
            checkCards(i: 3)
        }
        
    }
    
    @IBAction func image4Action(_ sender: Any) {
        if (cardsOpen > 2)
        {
            //Dont do anything
        }
        else
        {
            cardsOpen += 1
            image4Outlet.setImage(UIImage(named: arrayOfPictureNames[3]), for: UIControl.State.normal)
            checkCards(i: 4)
        }
        
    }
    @IBAction func image5Action(_ sender: Any) {
        if (cardsOpen > 2)
        {
            
        }
        else
        {
            cardsOpen += 1
            image5Outlet.setImage(UIImage(named: arrayOfPictureNames[4]), for: UIControl.State.normal)
            checkCards(i: 5)
        }
    }
    
    @IBAction func image6Action(_ sender: Any) {
        if (cardsOpen > 2)
        {
            
        }
        else
        {
            cardsOpen += 1
            image6Outlet.setImage(UIImage(named: arrayOfPictureNames[5]), for: UIControl.State.normal)
            checkCards(i: 6)
        }
    }
    
    @IBAction func image7Action(_ sender: Any) {
        if (cardsOpen > 2)
        {
            
        }
        else
        {
            cardsOpen += 1
            image7Outlet.setImage(UIImage(named: arrayOfPictureNames[6]), for: UIControl.State.normal)
            checkCards(i: 7)
        }
        
    }
    @IBAction func image8Action(_ sender: Any) {
        if (cardsOpen > 2)
        {
            
        }
        else
        {
            cardsOpen += 1
            image8Outlet.setImage(UIImage(named: arrayOfPictureNames[7]), for: UIControl.State.normal)
            checkCards(i: 8)
        }
        
    }
    @IBAction func image9Action(_ sender: Any) {
        if (cardsOpen > 2)
        {
            
        }
        else
        {
            cardsOpen += 1
            image9Outlet.setImage(UIImage(named: arrayOfPictureNames[8]), for: UIControl.State.normal)
            checkCards(i: 9)
        }
    }
    
    @IBAction func image10Action(_ sender: Any) {
        if (cardsOpen > 2)
        {
            
        }
        else
        {
            cardsOpen += 1
            image10Outlet.setImage(UIImage(named: arrayOfPictureNames[9]), for: UIControl.State.normal)
            checkCards(i: 10)
        }
    }
    

}
