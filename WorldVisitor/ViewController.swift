//
//  ViewController.swift
//  WorldVisitor
//
//  Created by Jason Kapanke on 2/1/15.
//  Copyright (c) 2015 Better Things. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swipeView: UIView!
    let swipeRec = UISwipeGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        swipeRec.addTarget(self, action: "swipedView")
        swipeView.addGestureRecognizer(swipeRec)
        swipeView.userInteractionEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func swipedView(){
        let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped the swipe view", preferredStyle: UIAlertControllerStyle.Alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }


}

