platform :ios, '9.0'
use_frameworks!

def testing_pods
    pod 'Quick'
    pod 'Nimble'
end

workspace 'SearchingTechniques.xcworkspace'
project 'SearchingTechniques.xcodeproj'

target 'SearchingTechniques-iOS' do
	project 'SearchingTechniques.xcodeproj'

  	target 'SearchingTechniques-iOSTests' do
    	inherit! :search_paths
    	testing_pods
  	end
end