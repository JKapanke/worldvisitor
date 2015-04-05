//
//  Activity.swift
//  WorldTraveler
//
//  Created by Jason Kapanke on 12/14/14.
//  Copyright (c) 2014 Better Things. All rights reserved.
//

import Foundation
import AVFoundation


class Activity
{
    var activityName = "unknownActivityName"
    var audioPlayer = AVAudioPlayer()
    
    func setActivityName(incomingActivityName: String)
    {
        activityName = incomingActivityName
    }
    
    func getActivityName() -> String
    {
        return activityName;
    }
    
    func welcomeToActivitySound()
    {
        let soundURL = NSBundle.mainBundle().URLForResource("diceShake", withExtension: "wav")
        audioPlayer = AVAudioPlayer(contentsOfURL: soundURL, error: nil)
        audioPlayer.play()
    }
}
