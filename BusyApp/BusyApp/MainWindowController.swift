//
//  MainWindowController.swift
//  BusyApp
//
//  Created by Beta Kuang on Jul 27.
//  Copyright © 2016 Beta Kuang. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet var slider: NSSlider!
    @IBOutlet var showMarksSlider: NSButton!
    @IBOutlet var hideMarksSlider: NSButton!
    @IBOutlet var sliderStateLabel: NSTextField!
    @IBOutlet var checkBox: NSButton!
    @IBOutlet var secureTextField: NSSecureTextField!
    @IBOutlet var textField: NSTextField!
    
    var lastSliderValue: Int = 0
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    @IBAction func resetControls(sender: NSButton) {
        slider.integerValue = 0
        slider.numberOfTickMarks = 10
        showMarksSlider.state = NSOnState
        hideMarksSlider.state = NSOffState
        sliderStateLabel.stringValue = ""
        checkBox.state = NSOffState
        secureTextField.stringValue = ""
        textField.stringValue = ""
    }
    
    @IBAction func showMarksSliderClicked(sender: NSButton) {
        if sender.state == NSOnState {
            hideMarksSlider.state = NSOffState
            
            slider.numberOfTickMarks = 10
        }
    }
    
    @IBAction func hideMarksSliderClicked(sender: NSButton) {
        if sender.state == NSOnState {
            showMarksSlider.state = NSOffState
            
            slider.numberOfTickMarks = 0
        }
    }
    
    @IBAction func modifyCheckBox(sender: NSButton) {
        if sender.state == NSOnState {
            sender.title = "Uncheck me"
        } else {
            sender.title = "Check me"
        }
    }
    
    @IBAction func sliderMoved(sender: NSSlider) {
        if (sender.integerValue > lastSliderValue) {
            sliderStateLabel.stringValue = "Slider goes up!"
        } else if (sender.integerValue < lastSliderValue) {
            sliderStateLabel.stringValue = "Slider goes down!"
        } else {
            sliderStateLabel.stringValue = ""
        }
        
        lastSliderValue = sender.integerValue
    }
    
    @IBAction func revealSecretMessage(sender: NSButton) {
        textField.stringValue = secureTextField.stringValue
    }
    
}