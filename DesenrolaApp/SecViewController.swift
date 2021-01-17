//
//  SecViewController.swift
//  DesenrolaApp
//
//  Created by Luis Pereira on 17/01/21.
//

import UIKit

var controlVar = false
class SecViewController: UIViewController {

    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    @IBOutlet var lockImage: [UIImageView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second View Controller")
        firstButton.layer.cornerRadius = 0.5 * firstButton.bounds.size.width
            firstButton.clipsToBounds = true
        
        secondButton.layer.cornerRadius = 0.5 * secondButton.bounds.size.width
            secondButton.clipsToBounds = true
        
        
        thirdButton.layer.cornerRadius = 0.5 * thirdButton.bounds.size.width
            thirdButton.clipsToBounds = true
        
        // Do any additional setup after loading the view.
        
        if controlVar{
            unlockButton()
        }
    }
    
    func unlockButton(){
        
        secondButton.backgroundColor = firstButton.backgroundColor
        
        secondButton.isUserInteractionEnabled = true
        
        lockImage.first?.isHidden = true
        
    }


}
