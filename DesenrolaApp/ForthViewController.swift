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
    @IBOutlet var inputField: UITextField!
    var count:Int = 0
    override func viewDidLoad() {
        print("Forth View Controller")
        super.viewDidLoad()
        msgArray.append(secondMsg)
        msgArray.append(thirdMsg)
        msgArray.append(forthMsg)
        msgArray.append(fifhMsg)
        inputField.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func showMsg(_ sender: Any) {
        
        UIView.transition(with: msgArray[count], duration: 0.8, options: .transitionCrossDissolve, animations: {self.msgArray[self.count].isHidden = false}, completion: nil)
        
        count  = (count + 1) % msgArray.count
        
        if count + 1 == msgArray.count{
            secondControlVar = true
            
            progressImageName = "Group 45-2"
        }
        
        inputField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(count)
        self.view.endEditing(true)
        let temp = count + 1
        UIView.transition(with: msgArray[count], duration: 0.8, options: .transitionCrossDissolve, animations: {self.msgArray[self.count].isHidden = false}, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            
            UIView.transition(with: self.msgArray[temp], duration: 0.8, options: .transitionCrossDissolve, animations: {self.msgArray[temp].isHidden = false}, completion: nil)
        }
        
        
        if count + 2 == msgArray.count{
            secondControlVar = true
            
            progressImageName = "Group 45-2"
        }
        
        count  = (count + 2) % msgArray.count
        
        inputField.text = ""
        return false
    }
    
}
