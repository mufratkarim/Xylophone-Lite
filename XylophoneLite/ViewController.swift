//
//  ViewController.swift
//  XylophoneLite
//
//  Created by Mufrat Karim Aritra on 1/3/21.
//  Copyright © 2023 Lego Code. All rights reserved.
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
        let prevColor = view.backgroundColor
        view.backgroundColor = button.backgroundColor
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.player = try! AVAudioPlayer(contentsOf: url!)
            self.player.play()
            self.view.backgroundColor = prevColor
            button.layer.opacity = 1
        }
        


    }
    
    

}

