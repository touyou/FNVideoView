
Pod::Spec.new do |s|

  s.name         = "FNVideoView"
  s.version      = "1.0.5"
  s.summary      = "Play the video on the background of the view"
  s.description  = <<-DESC
                    - Play the video on the background of the view
                   DESC
  s.homepage     = "https://github.com/funzin/FNVideoView"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "nakazawa fumito" => "famistapup@yahoo.co.jp" }
  s.social_media_url   = "http://twitter.com/fufunzin"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/touyou/FNVideoView.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}", "FNVideoView/**/*.swift"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
end
