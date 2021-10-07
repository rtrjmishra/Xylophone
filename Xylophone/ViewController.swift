//
//  ViewController.swift
//  Xylophone
//
//  Created by Rituraj Mishra on 08/10/2021.
//  Copyright © 2019 The Rituraj Mishra. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: UIButton)
    {
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")

        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
    
    

}

