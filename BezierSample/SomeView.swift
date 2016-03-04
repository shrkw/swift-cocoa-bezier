//
//  SomeView.swift
//  BezierSample
//
//  Created by shirakawa hiroyuki on 2016/03/04.
//  Copyright © 2016年 shirakawa hiroyuki. All rights reserved.
//

import Cocoa

class SomeView: NSView {
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        let x:CGFloat = 300.0
        let y:CGFloat = 300.0
//        self.drawLine(x, y: y)
        self.drawRounded(x, y: y)
        self.drawOval(x, y: y)
//        self.drawSwiftLogoBody()
//        self.drawSwiftLogoWing()
    }
    
    func drawSwiftLogoWing() {
        let path = NSBezierPath()
        path.moveToPoint(NSPoint(x:100, y:120))
        path.curveToPoint(NSPoint(x: 380, y:420), controlPoint1: NSPoint(x: 230, y:160), controlPoint2: NSPoint(x: 340, y:170))
        path.curveToPoint(NSPoint(x: 100, y:120), controlPoint1: NSPoint(x: 450, y:150), controlPoint2: NSPoint(x: 200, y:50))
        path.closePath()
        NSColor.orangeColor().setFill()
        NSColor.orangeColor().setStroke()
        path.fill()
        path.stroke()
    }
    func drawSwiftLogoBody() {
        let path = NSBezierPath()
        path.moveToPoint(NSPoint(x:400, y:80))
        path.curveToPoint(NSPoint(x: 110, y:330), controlPoint1: NSPoint(x: 350, y:180), controlPoint2: NSPoint(x: 120, y:240))
        path.curveToPoint(NSPoint(x: 400, y:80), controlPoint1: NSPoint(x: 140, y:280), controlPoint2: NSPoint(x: 400, y:180))
        path.curveToPoint(NSPoint(x: 150, y:350), controlPoint1: NSPoint(x: 350, y:180), controlPoint2: NSPoint(x: 120, y:240))
        path.curveToPoint(NSPoint(x: 400, y:80), controlPoint1: NSPoint(x: 140, y:280), controlPoint2: NSPoint(x: 400, y:180))
        path.closePath()
        NSColor.orangeColor().setFill()
        NSColor.orangeColor().setStroke()
        path.fill()
        path.stroke()
    }
    
    func drawBezier() {
        let path = NSBezierPath()
        path.moveToPoint(NSPoint(x:200, y:200))
        path.curveToPoint(NSPoint(x: 100, y:300), controlPoint1: NSPoint(x: 150, y:220), controlPoint2: NSPoint(x: 130, y:280))
        path.curveToPoint(NSPoint(x: 200, y:400), controlPoint1: NSPoint(x: 120, y:320), controlPoint2: NSPoint(x: 170, y:380))
        path.curveToPoint(NSPoint(x: 300, y:300), controlPoint1: NSPoint(x: 320, y:450), controlPoint2: NSPoint(x: 380, y:320))
        path.closePath()
        path.stroke()
        
    }
    
    func drawOval(x: CGFloat, y: CGFloat) {
        let rect = NSMakeRect(x / 2, y / 2, x, y * 0.8)
        let path = NSBezierPath()
        NSColor.whiteColor().setFill()
        path.appendBezierPathWithOvalInRect(rect)
        path.fill()
        path.stroke()
    }
    func drawSquare(x: CGFloat, y: CGFloat) {
        let rect = NSMakeRect(x / 4, y / 2, x * 2, y / 2)
        let path = NSBezierPath()
        NSColor.whiteColor().setFill()
        path.appendBezierPathWithRect(rect)
        path.fill()
        path.stroke()
    }
    
    func drawLine(x: CGFloat, y: CGFloat) {
        let path : NSBezierPath = NSBezierPath()
        NSColor.redColor().setStroke()
        path.moveToPoint(NSPoint(x: x,y: y))
        path.lineToPoint(NSPoint(x: x + x / 2, y: y + y / 2))
        path.lineWidth = 20.0 //Makes the line 5px width, but it even
        path.stroke()
    }
    
    func drawTriangle() {
        let path = NSBezierPath()
        path.moveToPoint(NSPoint(x:160, y:100))
        path.lineToPoint(NSPoint(x:280, y:300))
        path.lineToPoint(NSPoint(x: 40, y: 300))
        path.closePath()
        NSColor.greenColor().setFill()
        NSColor.redColor().setStroke()
        path.lineWidth = 3.0
        path.fill()
        path.stroke()
    }
    
    func drawRounded(x: CGFloat, y: CGFloat) {
        let rect = NSMakeRect(x / 4, y / 3, x * 1.5, y / 3)
        let path = NSBezierPath()
        NSColor.whiteColor().setFill()
        path.appendBezierPathWithRoundedRect(rect, xRadius: 10, yRadius: 10)
        path.fill()
        path.stroke()
        
    }
    
}
