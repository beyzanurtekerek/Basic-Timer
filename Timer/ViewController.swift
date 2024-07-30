//
//  ViewController.swift
//  TimerProject
//
//  Created by Beyza Nur Tekerek on 29.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = "\(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunc() {
        timeLabel.text = "\(counter)"
        counter -= 1
        
        if counter < -1 {
            timer.invalidate()
            timeLabel.text = "Time's Over"
        }
    }
                                

    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
    }
    
}

