#
# Be sure to run `pod lib lint Ads-CN.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
# 

Pod::Spec.new do |s|
  s.name             = 'Kevin-Ad'
  s.version          = '7.7.7.2'
  s.summary          = 'Kevin-Ad is a SDK from Bytedance providing union AD service.'
  s.description      = <<-DESC
  Kevin-Ad provides ADs which include native、banner、RewardVideo、FullscreenVideo etc.
                       DESC

  s.license          = { :type => 'MIT', :file => 'SDK/LICENSE' }
  s.author           = { 'bytedance' => 'xxxx@bytedance.com' }

  s.homepage         = 'https://github.com/bytedance/Bytedance-UnionAD.git'
  s.source           = { :http => "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/Debug/7.7.7.2/SDK.zip", :sha256 => "adf2d3e1baf3f1816a88cbeb7d21951dbe5375ba7c4a4e094a3baeaf43f21bfe" }
  s.platform         = :ios, "12.0"
  s.frameworks = 'UIKit', 'WebKit', 'MediaPlayer', 'AdSupport', 'CoreMedia', 'AVFoundation', 'CoreTelephony', 'StoreKit', 'SystemConfiguration', 'MobileCoreServices', 'CoreMotion', 'Accelerate','AudioToolbox','JavaScriptCore','Security','CoreImage','AudioToolbox'
  s.libraries = 'c++', 'resolv', 'z', 'sqlite3', 'bz2', 'xml2', 'iconv', 'c++abi', 'iconv'
  s.weak_frameworks = 'AppTrackingTransparency', 'CoreML', 'DeviceCheck'

  s.default_subspec = ['BUAdSDK']

  s.subspec 'BUAdSDK' do |ss|
    ss.dependency 'Kevin-Ad/PangleSDK'
    ss.dependency 'Kevin-Ad/TikTokBusinessSDK'
  end

  s.subspec 'PangleSDK' do |ss|
    ss.vendored_frameworks = ['SDK/PAGAdSDK.xcframework']
    ss.preserve_paths = 'SDK/PAGAdSDK.xcframework'
    ss.resource = 'SDK/PAGAdSDK.bundle'
    ss.resource_bundles = {
        'AdsGlobalSDK' => ['SDK/PAGAdSDK.xcframework/ios-arm64/PAGAdSDK.framework/PrivacyInfo.xcprivacy']
    }
  end

  s.subspec 'TikTokBusinessSDK' do |tss|
    tss.vendored_frameworks = ['SDK/TikTokBusinessSDK.xcframework']
    tss.preserve_paths = ['SDK/TikTokBusinessSDK.xcframework']
    tss.resource_bundles = {
        'TikTokBusinessSDK' => ['SDK/TikTokBusinessSDK.xcframework/ios-arm64/TikTokBusinessSDK.framework/PrivacyInfo.xcprivacy']
    }
  end
  
end