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
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var resetButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        reset()
    }
    
    @IBAction func button1Tapped(_ sender: UIButton) {
        UIView.performWithoutAnimation {
            if user1IsActive {
                sender.setImage(#imageLiteral(resourceName: "JasonFace"), for: .normal)
            } else {
                sender.setImage(#imageLiteral(resourceName: "NicFace"), for: .normal)
            }
        }
        user1IsActive = !user1IsActive
        sender.adjustsImageWhenDisabled = false
        sender.isEnabled = false
        threeInARow()
    }
    
    func reset(){
        button1.setImage(nil, for: .normal)
        button1.isEnabled = true
        button2.setImage(nil, for: .normal)
        button2.isEnabled = true
        button3.setImage(nil, for: .normal)
        button3.isEnabled = true
        button4.setImage(nil, for: .normal)
        button4.isEnabled = true
        button5.setImage(nil, for: .normal)
        button5.isEnabled = true
        button6.setImage(nil, for: .normal)
        button6.isEnabled = true
        button7.setImage(nil, for: .normal)
        button7.isEnabled = true
        button8.setImage(nil, for: .normal)
        button8.isEnabled = true
        button9.setImage(nil, for: .normal)
        button9.isEnabled = true
        resetButtonLabel.isHidden = true
        winnerLabel.text = nil
    }
    
    func gameOver() {
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
        button4.isEnabled = false
        button5.isEnabled = false
        button6.isEnabled = false
        button7.isEnabled = false
        button8.isEnabled = false
        button9.isEnabled = false
        resetButtonLabel.isHidden = false
    }
    
    func threeInARow() {
        
        if button1?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button2?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button3?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
            winnerLabel.text = "Jason Wins!"
            gameOver()
        } else if button1?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button2?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button3?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
            winnerLabel.text = "Nic Wins!"
            gameOver()
        }
        if button4?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button5?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button6?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
            winnerLabel.text = "Jason Wins!"
            gameOver()
        } else if button4?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button5?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button6?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
            winnerLabel.text = "Nic Wins!"
            gameOver()
        }
        if button7?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button8?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button9?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
            winnerLabel.text = "Jason Wins!"
            gameOver()
        } else if button7?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button8?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button9?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
            winnerLabel.text = "Nic Wins!"
            gameOver()
        }
        if button1?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button4?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button7?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
            winnerLabel.text = "Jason Wins!"
            gameOver()
        } else if button1?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button4?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button7?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
            winnerLabel.text = "Nic Wins!"
            gameOver()
        }
        if button2?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button5?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button8?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
            winnerLabel.text = "Jason Wins!"
            gameOver()
        } else if button2?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button5?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button8?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
            winnerLabel.text = "Nic Wins!"
            gameOver()
        }
        if button3?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button6?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button9?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
            winnerLabel.text = "Jason Wins!"
            gameOver()
        } else if button3?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button6?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button9?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
            winnerLabel.text = "Nic Wins!"
            gameOver()
        }
        if button1?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button5?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button9?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
            winnerLabel.text = "Jason Wins!"
            gameOver()
        } else if button1?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button5?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button9?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
            winnerLabel.text = "Nic Wins!"
            gameOver()
        }
        if button3?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button5?.imageView?.image == #imageLiteral(resourceName: "JasonFace") && button7?.imageView?.image == #imageLiteral(resourceName: "JasonFace") {
            winnerLabel.text = "Jason Wins!"
            gameOver()
        } else if button3?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button5?.imageView?.image == #imageLiteral(resourceName: "NicFace") && button7?.imageView?.image == #imageLiteral(resourceName: "NicFace") {
            winnerLabel.text = "Nic Wins!"
            gameOver()
        }

    }
    
}
