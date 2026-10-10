import SwiftUI

/// Tương ứng với `Tab.Navigator` trong `App.tsx`.
/// Giữ index tab hiện tại và render màn hình tương ứng, tab bar custom nằm dưới.
struct ContentView: View {
    @State private var currentIndex = 0

    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ZStack {
                    switch TabsName.all[currentIndex].route {
                    case .home: HomeScreen()
                    case .discover: DiscoverScreen()
                    case .chat: ChatScreen()
                    case .more: MoreScreen()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)

                BottomTabs(
                    currentIndex: $currentIndex,
                    availableWidth: geometry.size.width
                )
            }
        }
        // Giống Column edge-to-edge của Kotlin: nội dung tính từ mép trên màn hình.
        // Vẫn giữ safe area dưới để tab bar nằm trên home indicator.
        .ignoresSafeArea(.container, edges: .top)
        .background(Color.black.ignoresSafeArea())
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
