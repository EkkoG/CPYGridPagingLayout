#
# Be sure to run `pod lib lint CPYGridPagingLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CPYGridPagingLayout'
  s.version          = '0.2.3'
  s.summary          = 'A UICollectionViewLayout subclass used to show items like a grid.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'CPYGridPagingLayout is a UICollectionViewLayout subclass used to show items like a grid. Both vertical and horizontal layout suppport, item spacing and line spacing can be costomized.'

  s.homepage         = 'https://github.com/cielpy/CPYGridPagingLayout'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Cielpy' => 'beijiu572@gmail.com' }
  s.source           = { :git => 'https://github.com/cielpy/CPYGridPagingLayout.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CPYGridPagingLayout/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CPYGridPagingLayout' => ['CPYGridPagingLayout/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
