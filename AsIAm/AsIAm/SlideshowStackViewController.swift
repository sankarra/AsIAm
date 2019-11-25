//
//  SlideshowStackViewController.swift
//  AsIAm
//
//  Created by Samuel Rosas-Meza on 11/15/19.
//  Copyright © 2019 Anup Sankarraman. All rights reserved.
//

import UIKit

class SlideshowStackViewController: UIViewController {

   @IBOutlet weak var picture: UIImageView!
   @IBOutlet weak var name: UILabel!
   @IBOutlet weak var desc: UILabel!
   @IBOutlet weak var scroller: UIScrollView!
   @objc func buttonClicked(sender: UIButton){
       name.text = sender.title(for: .disabled)
       desc.text = sender.title(for: .focused)
       picture.image = sender.backgroundImage(for: .normal)

   }


   fileprivate let stackView: UIStackView = {
       let stack = UIStackView()
       stack.translatesAutoresizingMaskIntoConstraints = false
       stack.distribution = .fillEqually
       return stack
   }()

   var words: [[Any]] = [];

   var dict: [[String: Any]] = []

   override func viewDidLoad() {
       super.viewDidLoad()

       // Do any additional setup after loading the view.

       //stackView.heightAnchor.constraint(equalToConstant: view.frame.height - 700).isActive = true;
       stackView.frame = CGRect(x: 0, y: 0, width: 1300, height: 100)
    stackView.axis = .horizontal
    stackView.alignment = .fill // .Leading .FirstBaseline .Center .Trailing .LastBaseline
    stackView.distribution = .fill // .FillEqually .FillProportionally .EqualSpacing .EqualCentering
    stackView.spacing = 10.0

       scroller.addSubview(stackView)
              scroller.contentSize = CGSize(width: stackView.frame.width, height: stackView.frame.height)
              //print(stackView.frame.width)
              //print(view.frame.width)

       //stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true;

       //stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true;


       dict = ModuleNavModel.shared.module(at: ModuleNavModel.shared.selectedModule)?["Subtopics"] as! [[String: Any]]
       let subtopic = dict[ModuleNavModel.shared.selectedSubtopic]["SubtopicName"] as? String
       let words = dict[ModuleNavModel.shared.selectedSubtopic]["QuizItems"] as! [[String: String]]

           print(words.count)
       for word in words{
           //code to procedurally generate imageviews
           let name = word["word"]
           let picture = UIImage(named: (word["pictureURL"] ?? nil)!)
           let desc = word["description"]
           let shadow = UIImage(named: (word["shadowURL"] ?? nil)!)

           let button = UIButton()
           //button.frame = CGRect(x:, y: , width: 100, height: 50)
           //CGRect buttonframe = button.frame
           //buttonframe.size = CGSizeMake(100, 100)
           //button.frame = buttonframe
           button.addTarget(self, action: #selector(self.buttonClicked(sender:)), for: .touchUpInside)
           button.translatesAutoresizingMaskIntoConstraints = false
           button.widthAnchor.constraint(equalToConstant: 100).isActive = true
           button.heightAnchor.constraint(equalToConstant: 100).isActive = true



           button.setBackgroundImage(picture, for: [])
           button.setTitle(name, for: .disabled)
           button.setTitle(desc, for: .focused)

           stackView.addArrangedSubview(button)
           button.contentMode = .center

           self.words.append([name!,picture,desc,shadow])

       }
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
