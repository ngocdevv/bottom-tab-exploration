import SwiftUI

/// Layout chung của 4 màn hình: nền đen, title 32 bold trắng, subtitle 16 màu #888.
struct ScreenContent: View {
    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .font(.system(size: 32, weight: .bold))
                .foregroundStyle(.white)
            Text(subtitle)
                .font(.system(size: 16))
                .foregroundStyle(Color(hex: 0x888888))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}
