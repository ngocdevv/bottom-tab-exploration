import SwiftUI

/// Tương ứng với `src/screens/HomeScreen.tsx`.
struct HomeScreen: View {
    var body: some View {
        ScreenContent(title: "Home", subtitle: "Welcome to the Home screen")
    }
}

#Preview {
    HomeScreen()
}
