//
//  ViewController.swift
//  CardApp
//
//  Created by OJ on 3/11/18.
//  Copyright © 2018 otis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //properties of the class
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var RightScoreLabel: UILabel!
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //setting the action for the deal button
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if leftRandomNumber > rightRandomNumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftRandomNumber < rightRandomNumber{
            rightScore += 1
            RightScoreLabel.text = String(rightScore)
            
        }
        
    }//end dealTapped function
    
    
}//end ViewController class

