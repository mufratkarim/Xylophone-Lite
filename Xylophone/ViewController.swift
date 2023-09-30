//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(button: sender)
    }
    
    func playSound(button: UIButton) {
        let url = Bundle.main.url(forResource: button.currentTitle!, withExtension: "wav")
        button.layer.opacity = Float.random(in: 0.1...0.5)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.player = try! AVAudioPlayer(contentsOf: url!)
            self.player.play()
            button.layer.opacity = 1
        }
        


    }
    
    

}

