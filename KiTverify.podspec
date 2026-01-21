Pod::Spec.new do |spec|                                                                                                                                                          
  spec.name         = "KiTverify"                                                                                                                                                
  spec.version      = "0.1.0-beta.2"                                                                                                                                             
  spec.summary      = "KiTverify SDK for iOS"                                                                                                                                    
  spec.description  = "KiTverify SDK for iOS - Audio verification framework"                                                                                                     
  spec.homepage     = "https://www.kitbetter.com"                                                                                                                                
  spec.license      = { :type => 'Commercial' }                                                                                                                                  
  spec.authors      = {                                                                                                                                                          
    "Jaewoong Lee" => "jaewoong.lee@muzlive.com"                                                                                                                                       
  }                                                                                                                                                                              
  spec.swift_versions = ['5.0', '5.1', '5.2', '5.3', '5.4', '5.5', '5.6', '5.7', '5.8', '5.9', '5.10', '6.0', '6.1', '6.2']                                                                           
  spec.platform     = :ios, "14.0"                                                                                                                                               
  spec.requires_arc = true                                                                                                                                                       
                                                                                                                                                                                   
  spec.source       = { :http => "https://github.com/kitbetter-web/muzlive-kit-verify-sdk-ios/releases/download/v0.1.0-beta.2/KiTverify.xcframework.zip" }                       
  spec.vendored_frameworks = 'KiTverify.xcframework'                                                                                                                             
                                                                                                                                                                                   
  spec.dependency 'lottie-ios', '~> 4.5.0'                                                                                                                                       
end 
