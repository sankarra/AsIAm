//
//  NameViewController.swift
//  AsIAm
//
//  Created by Martin Anquetil on 9/26/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    

    

    @IBAction func ContinueButton(_ sender: Any) {
        
        let name: String? = nameField.text ?? nil
        
        myVariables.userName = name!
        
        if (name == nil || name! == ""){
            // warning
            let alert = UIAlertController(title: "Name Error", message: "Please tell us your name!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
            
            // change field color
            nameField.attributedPlaceholder = NSAttributedString(string:"Enter your name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
            
        } else {
            //UsersModel.shared.insert(user: UserProfile(name: name!))
            
            self.performSegue(withIdentifier: "continueSegue", sender: self)
        }
    }
    
    
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
