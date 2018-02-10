Pod::Spec.new do |s|
  s.name             = 'Sharaku'
  s.version          = '1.0.6'
  s.summary          = 'Sharaku is an image filtering UI library like Instagram.'
  s.description      = <<-DESC
    Sharaku is an image filtering library like Instagram which is using CIFilter. This library is strongly inspired by Fusuma.
        DESC
  s.homepage         = 'https://github.com/smashkins/Sharaku'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'smashkins' => 'smashkins@gmail.com' }
  s.source           = { :git => 'https://github.com/smashkins/Sharaku', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/smashkins'
  s.ios.deployment_target = '8.3'
  s.source_files = 'Sharaku/Classes/**/*'
  s.resources = ['Sharaku/Classes/**/*.xib', 'Sharaku/**/*.xcassets']
  s.resource_bundles = {
  }
end
