//
//  ForthViewController.swift
//  DesenrolaApp
//
//  Created by Luis Pereira on 17/01/21.
//

import UIKit

class ForthViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var secondMsg: UIImageView!
    @IBOutlet var thirdMsg: UIImageView!
    @IBOutlet var forthMsg: UIImageView!
    @IBOutlet var fifhMsg: UIImageView!
    var msgArray:[UIImageView] = []
    var count:Int = 0
    override func viewDidLoad() {
        print("Forth View Controller")
        super.viewDidLoad()
        msgArray.append(secondMsg)
        msgArray.append(thirdMsg)
        msgArray.append(forthMsg)
        msgArray.append(fifhMsg)
        // Do any additional setup after loading the view.
    }

    @IBAction func showMsg(_ sender: Any) {
        
        UIView.transition(with: msgArray[count], duration: 0.8, options: .transitionCrossDissolve, animations: {self.msgArray[self.count].isHidden = false}, completion: nil)
        
        count  = (count + 1) % msgArray.count
        
        if count + 1 == msgArray.count{
            secondControlVar = true
            
            progressImageName = "Group 45-2"
        }
        
    }
    
}
