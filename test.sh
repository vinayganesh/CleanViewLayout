
xcodebuild test -project CleanViewLayout.xcodeproj -scheme CleanViewLayout -destination 'platform=iOS Simulator,name=iPhone 7 Plus,OS=10.3.1'
slather coverage -s --scheme CleanViewLayout CleanViewLayout.xcodeproj
