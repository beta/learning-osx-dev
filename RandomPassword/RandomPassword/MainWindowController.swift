//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Beta Kuang on 4/30/16.
//  Copyright © 2016 Beta Kuang. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var textField: NSTextField!
    

    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    
    @IBAction func generatePassword(sender: AnyObject) {
        let length = 8
        let password = generateRandomString(length)
        
        textField.stringValue = password
    }
    
}
