#
# Be sure to run `pod lib lint UIActionSheetAutomaticActions.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#

Pod::Spec.new do |s|
  s.name             = "UIActionSheet+AutomaticActions"
  s.version          = "0.5.0"
  s.summary          = "Experimental UIActionSheet category that always invokes the correct selector."
  s.homepage         = "https://github.com/jlmendezbonini/UIActionSheet-AutomaticActions"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jorge Luis Mendez" => "jlmendezbonini@gmail.com" }
  s.source           = { :git => "https://github.com/jlmendezbonini/UIActionSheet-AutomaticActions.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = '*.{h,m}'
end
