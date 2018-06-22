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
//    @IBOutlet weak var buttonOne: UIButton!
//    @IBAction func button1(_ sender: Any) {
//        print("Button was pressed")
////        recommendRandomly()
//    }
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
//        buttonOne.setTitle(rec, for: .normal)
        label.text = rec
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("App is loaded")
        label.text = "Shake me to find out"
        labelName.text = "What fruit should I eat?"

        //        buttonOne.setTitle("How can I help you?", for: .normal)

        // put the code here 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

