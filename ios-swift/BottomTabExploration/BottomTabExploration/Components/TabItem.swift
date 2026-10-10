import SwiftUI
import UIKit

/// Giữ cùng một progress cho mọi thuộc tính, giống `TabItem.kt`.
struct TabItem: View {
    let label: String
    let icon: MaterialTabIcon
    let maxWidth: CGFloat
    let minWidth: CGFloat
    let isActive: Bool
    let onPress: () -> Void

    @State private var progress: Double

    init(
        label: String,
        icon: MaterialTabIcon,
        maxWidth: CGFloat,
        minWidth: CGFloat,
        isActive: Bool,
        onPress: @escaping () -> Void
    ) {
        self.label = label
        self.icon = icon
        self.maxWidth = maxWidth
        self.minWidth = minWidth
        self.isActive = isActive
        self.onPress = onPress
        _progress = State(initialValue: isActive ? 1 : 0)
    }

    /// Cùng stiffness và dampingRatio = 1 với durationSpring(400) bên Kotlin.
    private var spring: Animation {
        let omega = 6.6 / 0.4
        return .interpolatingSpring(mass: 1, stiffness: omega * omega, damping: 2 * omega)
    }

    var body: some View {
        Button(action: onPress) {
            TabPresentation(
                label: label,
                icon: icon,
                maxWidth: maxWidth,
                minWidth: minWidth,
                isActive: isActive,
                progress: progress
            )
        }
        .buttonStyle(TabButtonStyle())
        .accessibilityLabel(label)
        .accessibilityIdentifier("tab.\(label.lowercased())")
        .accessibilityAddTraits(isActive ? .isSelected : [])
        .onChange(of: isActive) { _, active in
            withAnimation(spring) {
                progress = active ? 1 : 0
            }
        }
    }
}

/// Chỉ progress được nội suy. isActive đổi ngay để xóa nhãn tab cũ và căn giữa icon.
private struct TabPresentation: View, Animatable {
    let label: String
    let icon: MaterialTabIcon
    let maxWidth: CGFloat
    let minWidth: CGFloat
    let isActive: Bool
    var progress: Double

    var animatableData: Double {
        get { progress }
        set { progress = newValue }
    }

    private var intrinsicLabelWidth: CGFloat {
        (label as NSString).size(withAttributes: [
            .font: UIFont.systemFont(ofSize: 16, weight: .semibold)
        ]).width
    }

    var body: some View {
        let value = min(max(progress, 0), 1)
        let width = minWidth + (maxWidth - minWidth) * value

        HStack(spacing: 0) {
            MaterialTabIconShape(icon: icon)
                .fill(Color(hex: 0x323232))
                .frame(width: 20, height: 20)
                .opacity(0.8 + 0.2 * value)

            if isActive {
                let gap = 12 * value
                // Như Row của Compose: nhãn chỉ nhận phần chiều rộng còn lại sau icon/gap.
                let labelWidth = min(intrinsicLabelWidth, max(0, width - 20 - gap))
                Text(label)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.black)
                    .lineLimit(1)
                    .fixedSize()
                    .frame(width: labelWidth, alignment: .leading)
                    .clipped()
                    .padding(.leading, gap)
                    .opacity(value)
                    .transition(.identity)
            }
        }
        .frame(width: width, height: 60)
        // Compose Color.lerp nội suy trong Oklab. Với đen → trắng, linear RGB = L³.
        .background(Color(.sRGBLinear, white: value * value * value, opacity: 1))
        .clipShape(Capsule(style: .circular))
        .contentShape(Capsule(style: .circular))
        // Tránh HStack tự animate vị trí icon/nhãn ngoài progress của pill.
        .transaction { $0.animation = nil }
    }
}

/// Compose tắt indication; nút iOS cũng giữ nguyên màu khi đang nhấn.
private struct TabButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}

#Preview {
    HStack(spacing: 10) {
        TabItem(label: "Home", icon: .home, maxWidth: 140, minWidth: 66, isActive: true) {}
        TabItem(label: "Discover", icon: .search, maxWidth: 140, minWidth: 66, isActive: false) {}
    }
    .padding()
    .background(Color.black)
}
