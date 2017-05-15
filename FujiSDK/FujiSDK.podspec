Pod::Spec.new do |s|

  s.name          = "FujiSDK"
  s.version       = "1.0.0"
  s.summary       = "Sort description of 'FujiSDK' framework"
  s.homepage      = "https://fujigame.net/"
  s.license       = "MIT"
  s.author        = "Nick D., Tuan L."
  s.platform      = :ios, "8.0"
  s.source        = { :git => "nami-net@nami-net.git.backlog.jp:/FJ_GAME_PF/fuji_sdk_swift.git" }
  s.source_files  = "FujiSDK", "FujiSDK/**/*.{h,m,swift}", "FujiSDK.podspec"

  s.resource_bundles = {"FujiSDK" => ["FujiSDK/**/*.{lproj,storyboard,png,jpg,jpeg}"]}

  s.dependency 'Alamofire', '~> 4.4'
  s.dependency 'SwiftyJSON'
  s.dependency 'NVActivityIndicatorView'
  s.dependency 'Toast-Swift'
  s.dependency 'Material', '~> 2.0'
  s.dependency 'CryptoSwift'
  s.dependency 'STRegex'
  s.dependency 'DatePickerDialog'
  s.dependency 'ASHorizontalScrollView', '~> 1.5.1'
  s.dependency 'FacebookLogin'
  s.dependency 'FacebookCore'

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }
  
  s.framework    = 'StoreKit'


end
