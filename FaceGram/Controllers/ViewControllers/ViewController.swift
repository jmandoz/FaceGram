//
//  ViewController.swift
//  FaceGram
//
//  Created by Jason Mandozzi on 7/17/19.
//  Copyright © 2019 Jason Mandozzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var user1IsActive: Bool = true
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1Tapped(_ sender: UIButton) {
        if user1IsActive {
            sender.setImage(#imageLiteral(resourceName: "JasonFace"), for: .normal)
        } else {
            sender.setImage(#imageLiteral(resourceName: "NicFace"), for: .normal)
        }
        user1IsActive = !user1IsActive
        sender.adjustsImageWhenDisabled = false
        sender.isEnabled = false
    }
    
    
    
    
    func threeInARow() {
        
        
        let firstArrayOfButtons = [button1, button2, button3]
        let secondArrayOfButtons = [button4, button5, button6]
        let thirdArrayOfButtons = [button7, button8, button9]
        let fourthArrayOfButtons = [button1, button4, button7]
        let fifthArrayOfButtons = [button2, button5, button8]
        let sixthArrayOfButtons = [button3, button6, button9]
        let seventhArrayOfButtons = [button1, button5, button9]
        let eighthArrayOfButtons = [button3, button5, button7]
        
//        let winningArray = [firstArrayOfButtons, secondArrayOfButtons, thirdArrayOfButtons, fourthArrayOfButtons, fifthArrayOfButtons, sixthArrayOfButton, seventhArrayOfButton, eighthArrayOfButton]
        //        var winningConditions = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
        
        for button in firstArrayOfButtons {
            if button?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
                winnerLabel.text = "Jason Wins!"
            } else if button?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
                winnerLabel.text = "Nic Wins!"
            }
        }
        for button in secondArrayOfButtons {
            if button?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
                winnerLabel.text = "Jason Wins!"
            } else if button?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
                winnerLabel.text = "Nic Wins!"
            }
        }
        for button in thirdArrayOfButtons {
            if button?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
                winnerLabel.text = "Jason Wins!"
            } else if button?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
                winnerLabel.text = "Nic Wins!"
            }
        }
        for button in fourthArrayOfButtons {
            if button?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
                winnerLabel.text = "Jason Wins!"
            } else if button?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
                winnerLabel.text = "Nic Wins!"
            }
        }
        for button in fifthArrayOfButtons {
            if button?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
                winnerLabel.text = "Jason Wins!"
            } else if button?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
                winnerLabel.text = "Nic Wins!"
            }
        }
        for button in sixthArrayOfButtons {
            if button?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
                winnerLabel.text = "Jason Wins!"
            } else if button?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
                winnerLabel.text = "Nic Wins!"
            }
        }
        for button in seventhArrayOfButtons {
            if button?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
                winnerLabel.text = "Jason Wins!"
            } else if button?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
                winnerLabel.text = "Nic Wins!"
            }
        }
        for button in eighthArrayOfButtons {
            if button?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
                winnerLabel.text = "Jason Wins!"
            } else if button?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
                winnerLabel.text = "Nic Wins!"
            }
        }
        
    }
    
}

