//
//  AppDelegate.swift
//  RGBWell
//
//  Created by Beta Kuang on Jul 26.
//  Copyright © 2016 Beta Kuang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: MainWindowController?


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Create a window controller
        let mainWindowController = MainWindowController()
        // Put the window of the window controller on screen
        mainWindowController.showWindow(self)
        // Set the property to point to the window controller
        self.mainWindowController = mainWindowController
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

