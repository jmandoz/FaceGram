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
//            sender.imageView?.image = #imageLiteral(resourceName: <#T##String#>)
            sender.backgroundColor = .red
        } else {
//            sender.imageView?.image = #imageLiteral(resourceName: <#T##String#>)
            // add picture two to the image view
        }
        user1IsActive = !user1IsActive
        
    }
    
    
    
    
    func threeInARow() {
        
        let firstArrayOfButtons = [button1, button2, button3]
        let secondArrayOfButtons = [button4, button5, button6]
        let thirdArrayOfButtons = [button7, button8, button9]
        
        var winningConditions = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    }
}

