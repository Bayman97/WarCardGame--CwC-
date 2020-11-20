//
//  ViewController.swift
//  WarCardGame
//
//  Created by Michael Zeng on 2020-11-18.
//

import UIKit

class ViewController: UIViewController {

    // left card
    @IBOutlet weak var leftImageView: UIImageView!
    // right card
    @IBOutlet weak var rightImageView: UIImageView!
    // player score label
    @IBOutlet weak var leftScoreLabel: UILabel!
    // cpu score label
    @IBOutlet weak var rightScoreLabel: UILabel!

    var leftScore = 0
    var rightScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // @IBAction means method is connected to something in storyboard
    // In this case it's when the deal button is pressed
    @IBAction func dealTapped(_ sender: Any) {

        // Randomize numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)

        // Update image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")

        // Compare + update scores
        if leftNumber > rightNumber {
            // Left wins
            leftScore = leftScore + 1
            leftScoreLabel.text = String(leftScore)

        }
        else if leftNumber < rightNumber {
            // Right wins
            rightScore = rightScore + 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // Tie
        }

    }

    @IBAction func resetScore(_ sender: Any) {

        leftScore = 0
        rightScore = 0

        leftScoreLabel.text = String(leftScore)
        rightScoreLabel.text = String(rightScore)
    }


}

