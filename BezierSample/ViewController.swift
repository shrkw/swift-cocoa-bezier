//
//  ViewController.swift
//  BezierSample
//
//  Created by shirakawa hiroyuki on 2016/03/04.
//  Copyright © 2016年 shirakawa hiroyuki. All rights reserved.
//

import Cocoa
import Foundation

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let x:CGFloat = self.view.bounds.origin.x
        let y:CGFloat = self.view.bounds.origin.y
        
        //UIViewController.viewの幅と高さを取得
        let width:CGFloat = self.view.bounds.width;
        let height:CGFloat = self.view.bounds.height
        
        //上記より画面ぴったりサイズのフレームを生成する
        let frame:CGRect = CGRect(x: x, y: y, width: width, height: height)
        
        //カスタマイズViewを生成
        let myVeiw:SomeView = SomeView(frame: frame)
        
        //カスタマイズViewを追加
        self.view.addSubview(myVeiw)
        
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    


}

