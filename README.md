# Scrollable-Tab-View-STV
Simple implementation of Scrollable Tab View in SwiftUI.

# Introduction

This is a SwiftUI code for a simple scrollable tabbed app. The app has five tabs, each with a different star icon and some text. The user can switch between tabs by tapping on the tab headers.

# Explaination

The code is organized into three main parts:

The ContentView struct defines the main view of the app. It contains a VStack with two child views:

A ScrollView with a HStack of tab headers. Each tab header is a Text view with a tap gesture recognizer that changes the selected tab.
A TabView with a ForEach loop that creates a VStack for each tab. Each VStack contains an Image view and a Text view.
The ContentView_Previews struct provides a preview of the app.

The TestApps struct is the main app struct. It creates a WindowGroup with a ContentView.

Here is a more detailed explanation of the code:

The @State property selectedTab is used to keep track of the currently selected tab.

The ScrollView is used to scroll horizontally between the tab headers. The showsIndicators property is set to false to hide the scroll indicators.

The HStack is used to lay out the tab headers in a horizontal row. The spacing property is set to 20 to add some space between the tab headers.

The ForEach loop iterates over the indices 0..<5, which creates five tab headers. Each tab header is a Text view with the text "Tab (index + 1)". The font property is set to .system(size: 16, weight: .semibold) to set the font size and weight. The padding property is set to .horizontal(16) and .vertical(10) to add some padding around the text. The foregroundColor property is set to .white if the tab is selected, and .black if the tab is not selected. The background property is set to Color.blue if the tab is selected, and Color.gray.opacity(0.8) if the tab is not selected. The cornerRadius property is set to 10 to make the tab headers rounded. The onTapGesture property is used to add a tap gesture recognizer to the tab header. When the tab header is tapped, the selectedTab property is set to the index of the tab header.

The TabView is used to display the content of the selected tab. The selection property is bound to the selectedTab property, so the TabView will display the content of the tab that is currently selected. The ForEach loop iterates over the indices 0..<5, which creates five tab contents. Each tab content is a VStack with an Image view and a Text view. The Image view displays a star icon. The Text view displays the text "Content for Tab (index + 1)". The font property is set to .title to set the font size. The padding property is set to .horizontal() and .vertical() to add some padding around the text.

The tabViewStyle property is set to PageTabViewStyle(indexDisplayMode: .never) to hide the tab indicators.

The indexViewStyle property is set to PageIndexViewStyle(backgroundDisplayMode: .always) to display the tab indices.

