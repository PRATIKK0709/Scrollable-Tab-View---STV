import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            // Header with tabs
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0..<5) { index in
                        Text("Tab \(index + 1)")
                            .font(.system(size: 16, weight: .semibold))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 10)
                            .foregroundColor(selectedTab == index ? .white : .black)
                            .background(selectedTab == index ? Color.blue : Color.gray.opacity(0.8))
                            .cornerRadius(10)
                            .onTapGesture {
                                selectedTab = index
                            }
                    }
                }
                .padding(.horizontal)
            }
            
            // Content area
            TabView(selection: $selectedTab) {
                ForEach(0..<5) { index in
                    VStack {
                        Image(systemName: "star.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .foregroundColor(.yellow)
                        
                        Text("Content for Tab \(index + 1)")
                            .font(.title)
                            .padding()
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


@main
struct TestApps: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
