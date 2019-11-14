//
//  SlideShowViewController.swift
//  MessDeck
//
//  Created by Samuel Rosas-Meza on 11/7/19.
//  Copyright © 2019 Samuel Rosas-Meza. All rights reserved.
//

import UIKit

class SlideShowViewController: UIViewController {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainDescription: UILabel!
    @IBOutlet weak var subImage1: UIImageView!
    @IBOutlet weak var subImage2: UIImageView!
    @IBOutlet weak var subImage3: UIImageView!
    
    @IBAction func imageTapped1(sender: UITapGestureRecognizer){
        mainImage.image = subImage1.image
        mainLabel.text = "Sensuality"
        mainDescription.text = "Sensuality involves our level of awareness, acceptance and enjoyment of your own or others bodies."
        
    }
    @IBAction func imageTapped2(sender: UITapGestureRecognizer){
        mainImage.image = subImage2.image
        mainLabel.text = "Sexual Identity"
        mainDescription.text = "Sexual identity is how we perceive ourselves as a sexual being. Its components are biological gender, gender identity, gender role and sexual orientation."
        
    }
    @IBAction func imageTapped3(sender: UITapGestureRecognizer){
        mainImage.image = subImage3.image
        mainLabel.text = "Intimacy"
        mainDescription.text = "Initamacy is the degree to which we express and have a need for closeness with another person. Its components are caring, sharing, liking/loving, trust, vulnerability, self-disclosure and emotional risk-taking."
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pictureTap1 = UITapGestureRecognizer(target: self, action: #selector(SlideShowViewController.imageTapped1))
        subImage1.addGestureRecognizer(pictureTap1)
        
        let pictureTap2 = UITapGestureRecognizer(target: self, action: #selector(SlideShowViewController.imageTapped2))
        subImage2.addGestureRecognizer(pictureTap2)
        
        let pictureTap3 = UITapGestureRecognizer(target: self, action: #selector(SlideShowViewController.imageTapped3))
        subImage3.addGestureRecognizer(pictureTap3)
        // Do any additional setup after loading the view.
        //mainImage.image = subImage1.image
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
