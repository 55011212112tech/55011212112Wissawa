//
//  ViewController.swift
//  buttonsound
//
//  Created by student on 11/21/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import CoreMotion
import AVFoundation

var url = NSURL()
var list = "1"

class ViewController: UIViewController {

    @IBAction func play(sender: AnyObject)
    {
        list = "1"
        coreAudio()
        audio1.play()
    }
    
    
    @IBAction func next(sender: AnyObject)
    {
        list = "2"
        coreAudio()
        audio1.play()
    }
    
    @IBAction func stop(sender: AnyObject)
    {
        audio1.stop()
    }
    //Core Audio
    var audioPlayer = AVAudioPlayer()
    
    var audio1 = AVAudioPlayer()
    var audio2 = AVAudioPlayer()
    var audio3 = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func coreAudio()
    {
        url = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(list, ofType: "mp3")!)
        var error: NSError?
//        audioPlayer.prepareToPlay()
        
        
        audio1 = AVAudioPlayer(contentsOfURL: url, error: &error)
        audio1.prepareToPlay()
     
        
//        audio1.stop()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

