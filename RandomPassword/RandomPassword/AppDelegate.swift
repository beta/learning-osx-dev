//
//  AppDelegate.swift
//  RandomPassword
//
//  Created by Beta Kuang on 4/30/16.
//  Copyright © 2016 Beta Kuang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var mainWindowController : MainWindowController?
    

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let mainWindowController = MainWindowController()
        mainWindowController.showWindow(self)
        
        self.mainWindowController = mainWindowController
    }
    

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

}

