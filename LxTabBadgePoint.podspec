Pod::Spec.new do |s|
  s.name         = "LxTabBadgePoint"
  s.version      = "1.0.0"
  s.summary      = "Easily custom viewController's tabBar badge view!"

  s.homepage     = "https://github.com/DeveloperLx/LxTabBadgePoint"
  s.license      = 'MIT'
  s.authors      = { 'DeveloperLx' => 'developerlx@yeah.com' }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/DeveloperLx/LxTabBadgePoint.git", :tag => s.version}
  s.source_files = 'LxTabBadgePoint/UIViewController+LxTabBadgePoint.*'
  s.requires_arc = true
  s.frameworks   = 'UIKit'
end
