//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Beta Kuang on Jul 26.
//  Copyright © 2016 Beta Kuang. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bSlider: NSSlider!
    @IBOutlet weak var colorWell: NSColorWell!
    
    var r = 0.0
    var g = 0.0
    var b = 0.0
    let a = 1.0
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        rSlider.doubleValue = r
        gSlider.doubleValue = g
        bSlider.doubleValue = b
        adjustColor()
    }
    
    func adjustColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b),
                               alpha: CGFloat(a))
        colorWell.color = newColor
    }
    
    @IBAction func adjustRed(sender: NSSlider) {
        r = sender.doubleValue / 255
        adjustColor()
    }
    
    @IBAction func adjustGreen(sender: NSSlider) {
        g = sender.doubleValue / 255
        adjustColor()
    }
    
    @IBAction func adjustBlue(sender: NSSlider) {
        b = sender.doubleValue / 255
        adjustColor()
    }
    
}
