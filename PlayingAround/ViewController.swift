//
//  ViewController.swift
//  PlayingAround
//
//  Created by Vivian Phung on 6/20/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var label: UILabel!
    override func becomeFirstResponder() -> Bool {
        return true
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            recommendRandomly()
        }
    }
    func recommendRandomly() {
        let recommendations: [String] = ["Apple", "Pear", "Mango", "Strawberry", "Berries"]
        let length: Int = recommendations.count
        let randomIndex = Int(arc4random_uniform(UInt32(length)))
        let rec = recommendations[randomIndex]
        label.text = rec
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("App is loaded")
        label.text = "SHAKE ME"
        labelName.text = "What fruit should I eat?"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

