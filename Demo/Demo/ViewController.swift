//
//  ViewController.swift
//  Demo
//
//  Created by 中澤郁斗 on 2017/06/04.
//  Copyright © 2017年 中澤郁斗. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet fileprivate var videoView: FNVideoView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "movie", ofType: "mp4")!)
        let videoView = FNVideoView(frame: self.view.frame, videoURL: url)
        self.view.addSubview(videoView)
        videoView.loopPlay()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


