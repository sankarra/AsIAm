//
//  MemoryMatchViewController.swift
//  AsIAm
//
//  Created by Anup Sankarraman on 10/25/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class MemoryMatchViewController: UIViewController {

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
    
    var arrayOfButtons: [UIButton] = []
    var arrayOfPictureNames: [String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image1Outlet.setImage(UIImage(named: "Asset 2"), for: UIControl.State.normal)
        arrayOfButtons = [image1Outlet, image2Outlet, image3Outlet, image4Outlet, image5Outlet, image6Outlet, image7Outlet, image8Outlet, image9Outlet, image10Outlet]
        arrayOfPictureNames = ["Asset 1", "Asset 1", "Asset 2", "Asset 2", "Asset 3", "Asset 3", "Asset 4", "Asset 4", "temp_av1", "temp_av1"]
        
        arrayOfPictureNames.shuffle()
        
        var i = 1
        while (i <= arrayOfButtons.count)
        {
            arrayOfButtons[i-1].setImage(UIImage(named: arrayOfPictureNames[i-1]), for: UIControl.State.normal)
            
            i = i+1
        }
        
        
        
        
        

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
