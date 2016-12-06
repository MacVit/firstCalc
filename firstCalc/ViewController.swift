//
//  ViewController.swift
//  firstCalc
//
//  Created by Vitalik Maksymlyuk on 06.12.16.
//  Copyright © 2016 Vitalik Maksymlyuk. All rights reserved.
//

import UIKit
import AVFoundation

class calcVC: UIViewController {

    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
        
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            
            btnSound.prepareToPlay()
            
        } catch let err as NSError {
        
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func numberPressed(sender: UIButton) {
    
        playSound()
        
    }
    
    func playSound() {
    
        if btnSound.isPlaying {
        
            btnSound.stop()
        
        }
        
        btnSound.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

