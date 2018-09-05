//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tyler Lutz on 9/4/18.
//  Copyright © 2018 Tyler Lutz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let magicBallArray = [
        "ball1",
        "ball2",
        "ball3",
        "ball4",
        "ball5"
    ]
    
    var magicBallRandom = 0
    
    @IBOutlet weak var magicBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMagicBallImage()
    }
    
    @IBAction func askMagicBall(_ sender: Any) {
        setMagicBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        setMagicBallImage()
    }
    
    func setMagicBallImage(){
        magicBallRandom = Int.random(in: 0 ... 4)
        magicBallImage.image = UIImage.init(named: magicBallArray[magicBallRandom])
    }

}

