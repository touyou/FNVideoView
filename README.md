# FNVideoView

## Features
Play the video on the background of the view

![GIF](https://github.com/funzin/FNVideoView/blob/develop/Screenshot/demo.gif)

## How to use
1. Add Video
[Build Phase]→[Copy Bundle Resources]→Tapped Plus Button

![AddVideo](https://github.com/funzin/FNVideoView/blob/develop/Screenshot/AddVideo.png)


2. Write Code
```Swift
import FNVideoView
```
   #### when using storyboard
   ```Swift
    @IBOutlet fileprivate var videoView: FNVideoView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "movie", ofType: "mp4")!)
        self.videoView.setPlayer(videoURL: url)
        videoView.loopPlay()
        
    }
   ```
  
   #### when not using storyboard
   ```Swift
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "movie", ofType: "mp4")!)
        let videoView = FNVideoView(frame: self.view.frame, videoURL: url)
        self.view.addSubview(videoView)
        videoView.loopPlay()
        
    }
   ```
  
## Runtime Requirements
iOS8.0 or later
Xcode 8.2 - Swift3
## Installation and Setup
### Installing with Carthage

Just add to your Cartfile:

```ogdl
github "funzin/FNVideoView"
```

### Installing with CocoaPods


To integrate FNVideoView into your Xcode project using CocoaPods, specify it in your `Podfile` and run `pod install`.
```bash
platform :ios, '8.0'
use_frameworks!
pod "FNVideoView"
```

## Contribution

Please file issues or submit pull requests for anything you’d like to see! We're waiting! :)

## License
FNVideoView is released under the MIT license. Go read the LICENSE file for more information.

