#
# Be sure to run `pod lib lint ThemePod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ThemePod'
  s.version          = '0.1.0'
  s.summary          = 'We can set our theme in our project using ThemePod'
  s.description      = <<-DESC
'Theme pod you are looking for.... heres the one from that you can extend the theme protocol and implement your own theme class and create a new theme variable and put it when you launch the screen and thats it '
                       DESC

  s.homepage         = 'https://github.com/SabariDinesh/ThemePod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SABARI DINESH K' => 'sabaridinesh.ec18@bitsathy.ac.in' }
  s.source           = { :git => 'https://github.com/SabariDinesh/ThemePod.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.source_files = 'Classess/**/*'
end
