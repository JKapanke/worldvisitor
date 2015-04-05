//
//  Country.swift
//  WorldTraveler
//
//  Created by Jason Kapanke on 1/29/15.
//  Copyright (c) 2015 Better Things. All rights reserved.
//

import Foundation
import UIKit

class Country
{
    var firstActivity = Activity()
    var secondActivity = Activity()
    var thirdActivity = Activity()
    
    init()
    {
        //default values for activity names
        firstActivity.setActivityName("UnknownActivity1")
        secondActivity.setActivityName("UnknownActivity2")
        thirdActivity.setActivityName("UnknownActivity3")
        
        //default values for activity welcome sound
        firstActivity.setActivitySoundFileName("diceShake")
        firstActivity.setActivitySoundFileExt("wav")
        secondActivity.setActivitySoundFileName("diceShake")
        secondActivity.setActivitySoundFileExt("wav")
        thirdActivity.setActivitySoundFileName("diceShake")
        thirdActivity.setActivitySoundFileExt("wav")
        
    }
    
    func getMapImage() -> UIImage
    {
        var imageToReturn: UIImage!
        imageToReturn = UIImage(named: "worldmap.jpg")
        return imageToReturn
    }
    
    func getCountryName() -> String
    {
        return "UnknownCountry"
    }

    func getFirstActivity() -> Activity
    {
        return firstActivity
    }
    
    func getSecondActivity() -> Activity
    {
        return secondActivity
    }
    
    func getThirdActivity() -> Activity
    {
        return thirdActivity
    }
    
}
