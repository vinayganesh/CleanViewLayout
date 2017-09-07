
xcodebuild clean build test -workspace CleanViewLayout.xcworkspace -scheme CleanViewLayout -destination 'platform=iOS Simulator,name=iPhone 7 Plus,OS=10.3.1'
# slather coverage -s --scheme CleanViewLayout --workspace CleanViewLayout.xcworkspace CleanViewLayout.xcodeproj
slather coverage --html --scheme CleanViewLayout --workspace CleanViewLayout.xcworkspace CleanViewLayout.xcodeproj