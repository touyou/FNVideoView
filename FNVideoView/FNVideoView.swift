//
//  FNVideoView.swift
//  Demo
//
//  Created by 中澤郁斗 on 2017/06/04.
//  Copyright © 2017年 中澤郁斗. All rights reserved.
//

import UIKit
import AVFoundation

// MARK: class

open class FNVideoView: UIView {
    
    fileprivate var player: AVPlayer? {
        get {
            guard let layer = self.layer as? AVPlayerLayer else {return nil}
            return layer.player
        }
        set(newValue) {
            guard let layer = self.layer as? AVPlayerLayer else {return}
            layer.player = newValue
        }
    }
    
    /**
     - parameter frame:
     - parameter videoURL:
     - parameter fillMode:AVLayerVideoGravityResizeAspect, AVLayerVideoGravityResizeAspectFill, AVLayerVideoGravityResize
     */
    public init(frame: CGRect, videoURL: URL, fillMode: String = AVLayerVideoGravityResizeAspectFill) {
        super.init(frame: frame)
        
        self.frame = frame
        self.setPlayer(videoURL: videoURL, fillMode: fillMode)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open class var layerClass: Swift.AnyClass {
        get {
            return AVPlayerLayer.self
        }
    }
}

// MARK: public method

public extension FNVideoView {
    
    /**
     - parameter videoURL:
     - parameter fillMode:AVLayerVideoGravityResizeAspect, AVLayerVideoGravityResizeAspectFill, AVLayerVideoGravityResize
     */
    func setPlayer(videoURL: URL, fillMode: String = AVLayerVideoGravityResizeAspectFill) {
        self.player = AVPlayer(url: videoURL)
        self.player?.actionAtItemEnd = AVPlayerActionAtItemEnd.none
        self.setFillMode(mode: fillMode)
    }
    
    func play() {
        self.player?.play()
    }
    
    func pause() {
        self.player?.pause()
    }
    
    func loopPlay() {
        self.play()
        NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil, queue: nil) { notification in
            self.player?.seek(to: kCMTimeZero)
            self.play()
        }
    }
}

// MARK: private method

private extension FNVideoView {
    
    func setFillMode(mode: String ) {
        guard let layer = self.layer as? AVPlayerLayer else {return}
        layer.videoGravity = mode
    }
}
