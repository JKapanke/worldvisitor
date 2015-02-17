//
//  CountryViewController.swift
//  WorldTraveler
//
//  Created by Jason Kapanke on 12/7/14.
//  Copyright (c) 2014 Better Things. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController
{
    @IBOutlet weak var typeOfCountry: AnyObject!
    @IBOutlet weak var dynamicLabel: UILabel!
    @IBOutlet weak var dynamicMap: UIImageView!
    @IBOutlet weak var dynamicActivityOne: UILabel!
    @IBOutlet weak var dynamicActivityTwo: UILabel!
    @IBOutlet weak var dynamicActivityThree: UILabel!
    @IBOutlet var swipeRightGestureRecog: UISwipeGestureRecognizer!
    @IBOutlet var swipeLeftGestureRecog: UISwipeGestureRecognizer!
    @IBOutlet var swipeDownGestureRecog: UISwipeGestureRecognizer!
    
    var selectedActivity: Activity!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var currentCountry = typeOfCountry as Country
        
        println("The country name is: \(currentCountry.getCountryName())")
        
        //change the label to the passed data
        dynamicLabel.text = currentCountry.getCountryName()
        
        //set the image in the View
        dynamicMap.image = currentCountry.getMapImage()
        
        //set the activities
        dynamicActivityOne.text = "Swipe Right to " + currentCountry.getFirstActivity().getActivityName()
        dynamicActivityTwo.text = "Swipe Left to " + currentCountry.getSecondActivity().getActivityName()
        dynamicActivityThree.text = "Swipe Down to " + currentCountry.getThirdActivity().getActivityName()
        
        swipeRightGestureRecog.addTarget(self, action: "swipedRightAction")
        swipeLeftGestureRecog.addTarget(self, action: "swipedLeftAction")
        swipeDownGestureRecog.addTarget(self, action: "swipedDownAction")
        //swipeRightGestureRecog.addGestureRecognizer(swipeRec)
        //swipeRightGestureRecog.userInteractionEnabled = true
        
        //TODO select the activity to pass along to the Activity page
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // prepare for seque
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        //the segue must be named as noted in the operator
        if (segue.identifier == "toActivitySegueFromSwipeRight")
        {
            swipedRightAction()
            var cvc = segue.destinationViewController as ActivityViewController;
            cvc.incomingActivitySelected = selectedActivity
        }
        else if (segue.identifier == "toActivitySegueFromSwipeLeft")
        {
            swipedLeftAction()
            var cvc = segue.destinationViewController as ActivityViewController;
            cvc.incomingActivitySelected = selectedActivity
        }
        else if (segue.identifier == "toActivitySegueFromSwipeDown")
        {
            swipedDownAction()
            var cvc = segue.destinationViewController as ActivityViewController;
            cvc.incomingActivitySelected = selectedActivity
        }
        else
        {
            var cvc = segue.destinationViewController as ActivityViewController;
            cvc.incomingActivitySelected = Activity()
        }
    }
    
    

    func swipedRightAction(){
        //let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped to the right", preferredStyle: UIAlertControllerStyle.Alert)
        //tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        //self.presentViewController(tapAlert, animated: true, completion: nil)
        selectedActivity = (typeOfCountry as Country).getFirstActivity()
        
    }
    
    func swipedLeftAction(){
        //let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped to the left", preferredStyle: UIAlertControllerStyle.Alert)
        //tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        //self.presentViewController(tapAlert, animated: true, completion: nil)
        selectedActivity = (typeOfCountry as Country).getSecondActivity()
        
    }
    
    func swipedDownAction(){
       //let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped to the down", preferredStyle: UIAlertControllerStyle.Alert)
       //tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        //self.presentViewController(tapAlert, animated: true, completion: nil)
        selectedActivity = (typeOfCountry as Country).getThirdActivity()
        
    }
}

