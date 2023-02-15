# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'

target 'brscan-demo-selfie-ios' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for brscan-demo-selfie-ios
 pod 'serasa-idf-liveness3d-ios'
  
end

post_install do |pi|
    pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
      end
    end
end
