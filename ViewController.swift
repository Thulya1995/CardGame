//
//  ViewController.swift
//  CardGame
//
//  Created by Thulya Palihapitiya on 11/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealtapped(_ sender: Any) {
        
        let leftnumber = Int.random(in: 2...14)
        //print(leftnumber)
        
        let rightnumber = Int.random(in: 2...14)
        //print(rightnumber)
        
        leftImageView.image = UIImage(named: "card\(leftnumber)")
        rightImageView.image = UIImage(named:"card\(rightnumber)")
        
        if leftnumber > rightnumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }else if leftnumber < rightnumber{
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
    }
    
}

