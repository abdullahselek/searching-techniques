use_frameworks!

def testing_pods
    pod 'Quick'
    pod 'Nimble'
end

workspace 'SearchingTechniques.xcworkspace'
project 'SearchingTechniques.xcodeproj'

target 'SearchingTechniques-iOS' do
  platform :ios, '9.0'
	project 'SearchingTechniques.xcodeproj'

  	target 'SearchingTechniques-iOSTests' do
    	inherit! :search_paths
    	testing_pods
  	end
end

target 'SearchingTechniques-macOS' do
  platform :osx, '10.10'
	project 'SearchingTechniques.xcodeproj'

  	target 'SearchingTechniques-macOSTests' do
    	inherit! :search_paths
    	testing_pods
  	end
end