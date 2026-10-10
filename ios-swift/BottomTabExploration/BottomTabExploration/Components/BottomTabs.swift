import SwiftUI

/// Tương ứng với `src/components/bottom-tabs.tsx`.
struct BottomTabs: View {
    @Binding var currentIndex: Int
    let availableWidth: CGFloat

    private let horizontalPadding: CGFloat = 12
    private let gap: CGFloat = 10
    private let maxWidth: CGFloat = 140

    var body: some View {
        let count = CGFloat(TabsName.all.count)
        // Tổng chiều rộng còn lại cho các tab sau khi trừ padding hai bên và khoảng cách giữa các tab.
        let tabsWidth = availableWidth - horizontalPadding * 2 - gap * (count - 1)
        let minWidth = (tabsWidth - maxWidth) / (count - 1)

        HStack(spacing: gap) {
            ForEach(Array(TabsName.all.enumerated()), id: \.element.id) { index, tab in
                TabItem(
                    label: tab.label,
                    icon: tab.icon,
                    maxWidth: maxWidth,
                    minWidth: minWidth,
                    isActive: index == currentIndex,
                    onPress: { currentIndex = index }
                )
            }
        }
        .padding(.horizontal, horizontalPadding)
        .padding(.top, 12)
        .frame(maxWidth: .infinity)
        .background(Color.black)
        .overlay(alignment: .top) {
            // borderTopWidth: 1, borderTopColor: #333333
            Rectangle()
                .fill(Color(hex: 0x333333))
                .frame(height: 1)
        }
    }
}

#Preview {
    VStack {
        Spacer()
        BottomTabs(currentIndex: .constant(0), availableWidth: 393)
    }
    .background(Color.black)
    .preferredColorScheme(.dark)
}
