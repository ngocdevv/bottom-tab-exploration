import SwiftUI

/// Tương ứng với `src/components/constant.ts`.
enum TabRoute: Hashable {
    case home, discover, chat, more
}

struct TabInfo: Identifiable, Hashable {
    let route: TabRoute
    let label: String
    /// Cùng vector Material outlined với bản Kotlin.
    let icon: MaterialTabIcon

    var id: TabRoute { route }
}

enum TabsName {
    static let all: [TabInfo] = [
        TabInfo(route: .home, label: "Home", icon: .home),
        TabInfo(route: .discover, label: "Discover", icon: .search),
        TabInfo(route: .chat, label: "Chat", icon: .chatBubbleOutline),
        TabInfo(route: .more, label: "More", icon: .settings),
    ]
}
