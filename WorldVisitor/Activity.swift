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
    var soundURLFileName = "unknownSoundURLFileName"
    var soundURLFileExt = "unknownSoundURLFileExt"
    
    //TODO
    //Instead of dynamically setting these maybe read from a config file to setup each country
    
    func setActivityName(incomingActivityName: String)
    {
        activityName = incomingActivityName
    }
    
    func getActivityName() -> String
    {
        return activityName;
    }
    
    func setActivitySoundFileName(incomingActivitySoundFileName: String)
    {
        soundURLFileName = incomingActivitySoundFileName;
    }
    
    func getActivitySoundFileName() -> String
    {
        return soundURLFileName;
    }
    
    func setActivitySoundFileExt(incomingActivitySoundFileExt: String)
    {
        soundURLFileExt = incomingActivitySoundFileExt;
    }
    
    func getActivitySoundFileExt() -> String
    {
        return soundURLFileExt;
    }
    
    func playWelcomeToActivitySound()
    {
        let soundURL = NSBundle.mainBundle().URLForResource(getActivitySoundFileName(), withExtension: getActivitySoundFileExt())
        audioPlayer = AVAudioPlayer(contentsOfURL: soundURL, error: nil)
        audioPlayer.play()
    }
}
