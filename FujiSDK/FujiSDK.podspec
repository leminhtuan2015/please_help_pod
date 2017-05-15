Pod::Spec.new do |s|

  s.name          = "FujiSDK"
  s.version       = "1.0.0"
  s.summary       = "Sort description of 'FujiSDK' framework"
  s.homepage      = "https://fujigame.net/"
  s.license       = "MIT"
  s.author        = "Nick D., Tuan L."
  s.platform      = :ios, "8.0"
  s.source        = { :git => "nami-net@nami-net.git.backlog.jp:/FJ_GAME_PF/fuji_sdk_swift.git" }
  s.source_files  = "FujiSDK", "FujiSDK/**/*.{h,m,swift}", "FujiSDK.podspec", "FujiSDK-Bridging-Header.h"

  s.resource_bundles = {"FujiSDK" => ["FujiSDK/**/*.{lproj,storyboard,png,jpg,jpeg}"]}

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }
  
  s.framework    = 'StoreKit'


end
