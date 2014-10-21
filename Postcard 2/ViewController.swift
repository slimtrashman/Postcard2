//
//  ViewController.swift
//  Postcard 2
//
//  Created by Tom Streep on 10/19/14.
//  Copyright (c) 2014 Tom Streep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sendPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessage.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterName.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessage.resignFirstResponder()
        enterMessage.text = ""
        
        enterName.text = ""
        
        sendButton.setTitle(":)", forState: UIControlState.Normal)
    }

}

