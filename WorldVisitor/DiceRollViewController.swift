//
//  DiceRollViewController.swift
//  WorldTraveler
//
//  Created by Jason Kapanke on 12/2/14.
//  Copyright (c) 2014 Better Things. All rights reserved.
//

import UIKit

class DiceRollViewController: UIViewController
{
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var secondDieImage: UIImageView!
    @IBOutlet weak var firstDieImage: UIImageView!
    @IBOutlet weak var gotoCountryButton: UIButton!
    
    var countryRolled = Country()

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    //send them to the next view with the selected country by passing the country name as part of the seque
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        //the segue must be named as noted in the operator
        if (segue.identifier == "toCountrySegue")
        {
            var cvc = segue.destinationViewController as CountryViewController;
            
            cvc.typeOfCountry = countryRolled
        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
   
    @IBAction func rollButtonAction(sender: UIButton)
    {
        let firstDie =  Dice()
        let secondDie = Dice()
        
        //initiate rolling die sound
        firstDie.playRollingDiceSound()
        
        //sleep for 2 seconds to allow the shaking and rolling of die to complete
        sleep(2)
        
        var firstDieValue = firstDie.rollDice()
        var secondDieValue = secondDie.rollDice()
        
        var dieTotal = firstDieValue + secondDieValue
        
        firstDieImage.image = UIImage(named: "dice\(firstDieValue).png")
        secondDieImage.image = UIImage(named: "dice\(secondDieValue).png")
        
        println("you rolled a \(dieTotal)!")
        
        //Call the function which returns a country to the value
        countryRolled = determineCountryBasedOnRoll(dieTotal)
        
        println("Country to visit: \(countryRolled.getCountryName())")
        
        gotoCountryButton.setTitle("Swipe Right to go to \(countryRolled.getCountryName())", forState: .Normal)
    }
    
    
    func determineCountryBasedOnRoll(dieValue: Int) -> Country {
        
        var determinedCountry = Country()
        
        switch dieValue
        {
            case 0...4:
                determinedCountry = Canada()
            case 5...6:
                determinedCountry = Brazil()
            case 7...8:
                determinedCountry = India()
            case 9...10:
                determinedCountry = Australia()
            case 11...12:
                determinedCountry = China()
            default:
                determinedCountry = Country()
        }
        return determinedCountry
    }
}
