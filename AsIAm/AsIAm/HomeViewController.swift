//
//  HomeViewController.swift
//  AsIAm
//
//  Created by Martin Anquetil on 9/26/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerSelection: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerSelection.delegate = self
        self.pickerSelection.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    let model = ["John","Bob","Carl"] // TODO: GET NAMES FROM PLIST
    weak var button: UIButton?
    var handler: (() -> ())?


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return model.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return self.model[row]
    }

    
    @IBAction func continueButton(_ sender: Any) {
        var selectedName = model[pickerSelection.selectedRow(inComponent: 0)] //gets name selected to put in plist
        
       print(selectedName)
        
        self.performSegue(withIdentifier: "nameSelectedSegue", sender: self)
        
    }
    
}
