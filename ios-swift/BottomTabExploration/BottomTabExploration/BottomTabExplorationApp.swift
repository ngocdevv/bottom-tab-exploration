import SwiftUI

/// Tương ứng với `App.tsx`: root của ứng dụng.
/// GestureHandlerRootView / SafeAreaProvider / NavigationContainer trong RN
/// được SwiftUI xử lý sẵn nên không cần wrapper riêng.
@main
struct BottomTabExplorationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
