/*
 * Copyright 2025 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import SwiftUI

/// The exact Icons.Outlined paths used by the Kotlin app (AndroidX Material 1.7.8).
/// Home, Search and Settings come from material-icons-core-android; ChatBubbleOutline
/// comes from material-icons-extended-android. Relative commands are expanded below
/// without changing the original 24 × 24 viewport or nonzero winding fill.
enum MaterialTabIcon: Hashable {
    case home, search, chatBubbleOutline, settings

    fileprivate var viewportPath: Path {
        switch self {
        case .home: Self.homePath
        case .search: Self.searchPath
        case .chatBubbleOutline: Self.chatBubbleOutlinePath
        case .settings: Self.settingsPath
        }
    }

    private static let homePath: Path = {
        var path = Path()
        path.move(to: CGPoint(x: 12, y: 5.69))
        path.addLine(to: CGPoint(x: 17, y: 10.19))
        path.addLine(to: CGPoint(x: 17, y: 18))
        path.addLine(to: CGPoint(x: 15, y: 18))
        path.addLine(to: CGPoint(x: 15, y: 12))
        path.addLine(to: CGPoint(x: 9, y: 12))
        path.addLine(to: CGPoint(x: 9, y: 18))
        path.addLine(to: CGPoint(x: 7, y: 18))
        path.addLine(to: CGPoint(x: 7, y: 10.19))
        path.addLine(to: CGPoint(x: 12, y: 5.69))
        path.move(to: CGPoint(x: 12, y: 3))
        path.addLine(to: CGPoint(x: 2, y: 12))
        path.addLine(to: CGPoint(x: 5, y: 12))
        path.addLine(to: CGPoint(x: 5, y: 20))
        path.addLine(to: CGPoint(x: 11, y: 20))
        path.addLine(to: CGPoint(x: 11, y: 14))
        path.addLine(to: CGPoint(x: 13, y: 14))
        path.addLine(to: CGPoint(x: 13, y: 20))
        path.addLine(to: CGPoint(x: 19, y: 20))
        path.addLine(to: CGPoint(x: 19, y: 12))
        path.addLine(to: CGPoint(x: 22, y: 12))
        path.addLine(to: CGPoint(x: 12, y: 3))
        path.closeSubpath()
        return path
    }()

    private static let searchPath: Path = {
        var path = Path()
        path.move(to: CGPoint(x: 15.5, y: 14))
        path.addLine(to: CGPoint(x: 14.71, y: 14))
        path.addLine(to: CGPoint(x: 14.43, y: 13.73))
        path.addCurve(to: CGPoint(x: 16, y: 9.5),
                      control1: CGPoint(x: 15.41, y: 12.59),
                      control2: CGPoint(x: 16, y: 11.11))
        path.addCurve(to: CGPoint(x: 9.5, y: 3),
                      control1: CGPoint(x: 16, y: 5.91),
                      control2: CGPoint(x: 13.09, y: 3))
        path.addCurve(to: CGPoint(x: 3, y: 9.5),
                      control1: CGPoint(x: 5.91, y: 3),
                      control2: CGPoint(x: 3, y: 5.91))
        path.addCurve(to: CGPoint(x: 9.5, y: 16),
                      control1: CGPoint(x: 3, y: 13.09),
                      control2: CGPoint(x: 5.91, y: 16))
        path.addCurve(to: CGPoint(x: 13.73, y: 14.43),
                      control1: CGPoint(x: 11.11, y: 16),
                      control2: CGPoint(x: 12.59, y: 15.41))
        path.addLine(to: CGPoint(x: 14, y: 14.71))
        path.addLine(to: CGPoint(x: 14, y: 15.5))
        path.addLine(to: CGPoint(x: 19, y: 20.49))
        path.addLine(to: CGPoint(x: 20.49, y: 19))
        path.addLine(to: CGPoint(x: 15.5, y: 14))
        path.closeSubpath()
        path.move(to: CGPoint(x: 9.5, y: 14))
        path.addCurve(to: CGPoint(x: 5, y: 9.5),
                      control1: CGPoint(x: 7.01, y: 14),
                      control2: CGPoint(x: 5, y: 11.99))
        path.addCurve(to: CGPoint(x: 9.5, y: 5),
                      control1: CGPoint(x: 5, y: 7.01),
                      control2: CGPoint(x: 7.01, y: 5))
        path.addCurve(to: CGPoint(x: 14, y: 9.5),
                      control1: CGPoint(x: 11.99, y: 5),
                      control2: CGPoint(x: 14, y: 7.01))
        path.addCurve(to: CGPoint(x: 9.5, y: 14),
                      control1: CGPoint(x: 14, y: 11.99),
                      control2: CGPoint(x: 11.99, y: 14))
        path.closeSubpath()
        return path
    }()

    private static let chatBubbleOutlinePath: Path = {
        var path = Path()
        path.move(to: CGPoint(x: 20, y: 2))
        path.addLine(to: CGPoint(x: 4, y: 2))
        path.addCurve(to: CGPoint(x: 2, y: 4),
                      control1: CGPoint(x: 2.9, y: 2),
                      control2: CGPoint(x: 2, y: 2.9))
        path.addLine(to: CGPoint(x: 2, y: 22))
        path.addLine(to: CGPoint(x: 6, y: 18))
        path.addLine(to: CGPoint(x: 20, y: 18))
        path.addCurve(to: CGPoint(x: 22, y: 16),
                      control1: CGPoint(x: 21.1, y: 18),
                      control2: CGPoint(x: 22, y: 17.1))
        path.addLine(to: CGPoint(x: 22, y: 4))
        path.addCurve(to: CGPoint(x: 20, y: 2),
                      control1: CGPoint(x: 22, y: 2.9),
                      control2: CGPoint(x: 21.1, y: 2))
        path.closeSubpath()
        path.move(to: CGPoint(x: 20, y: 16))
        path.addLine(to: CGPoint(x: 6, y: 16))
        path.addLine(to: CGPoint(x: 4, y: 18))
        path.addLine(to: CGPoint(x: 4, y: 4))
        path.addLine(to: CGPoint(x: 20, y: 4))
        path.addLine(to: CGPoint(x: 20, y: 16))
        path.closeSubpath()
        return path
    }()

    private static let settingsPath: Path = {
        var path = Path()
        path.move(to: CGPoint(x: 19.43, y: 12.98))
        path.addCurve(to: CGPoint(x: 19.5, y: 12),
                      control1: CGPoint(x: 19.47, y: 12.66),
                      control2: CGPoint(x: 19.5, y: 12.34))
        path.addCurve(to: CGPoint(x: 19.43, y: 11.02),
                      control1: CGPoint(x: 19.5, y: 11.66),
                      control2: CGPoint(x: 19.47, y: 11.34))
        path.addLine(to: CGPoint(x: 21.54, y: 9.37))
        path.addCurve(to: CGPoint(x: 21.66, y: 8.73),
                      control1: CGPoint(x: 21.73, y: 9.22),
                      control2: CGPoint(x: 21.78, y: 8.95))
        path.addLine(to: CGPoint(x: 19.66, y: 5.27))
        path.addCurve(to: CGPoint(x: 19.22, y: 5.02),
                      control1: CGPoint(x: 19.57, y: 5.11),
                      control2: CGPoint(x: 19.4, y: 5.02))
        path.addCurve(to: CGPoint(x: 19.05, y: 5.05),
                      control1: CGPoint(x: 19.16, y: 5.02),
                      control2: CGPoint(x: 19.1, y: 5.03))
        path.addLine(to: CGPoint(x: 16.56, y: 6.05))
        path.addCurve(to: CGPoint(x: 14.87, y: 5.07),
                      control1: CGPoint(x: 16.04, y: 5.65),
                      control2: CGPoint(x: 15.48, y: 5.32))
        path.addLine(to: CGPoint(x: 14.49, y: 2.42))
        path.addCurve(to: CGPoint(x: 14, y: 2),
                      control1: CGPoint(x: 14.46, y: 2.18),
                      control2: CGPoint(x: 14.25, y: 2))
        path.addLine(to: CGPoint(x: 10, y: 2))
        path.addCurve(to: CGPoint(x: 9.51, y: 2.42),
                      control1: CGPoint(x: 9.75, y: 2),
                      control2: CGPoint(x: 9.54, y: 2.18))
        path.addLine(to: CGPoint(x: 9.13, y: 5.07))
        path.addCurve(to: CGPoint(x: 7.44, y: 6.05),
                      control1: CGPoint(x: 8.52, y: 5.32),
                      control2: CGPoint(x: 7.96, y: 5.66))
        path.addLine(to: CGPoint(x: 4.95, y: 5.05))
        path.addCurve(to: CGPoint(x: 4.77, y: 5.02),
                      control1: CGPoint(x: 4.89, y: 5.03),
                      control2: CGPoint(x: 4.83, y: 5.02))
        path.addCurve(to: CGPoint(x: 4.34, y: 5.27),
                      control1: CGPoint(x: 4.6, y: 5.02),
                      control2: CGPoint(x: 4.43, y: 5.11))
        path.addLine(to: CGPoint(x: 2.34, y: 8.73))
        path.addCurve(to: CGPoint(x: 2.46, y: 9.37),
                      control1: CGPoint(x: 2.21, y: 8.95),
                      control2: CGPoint(x: 2.27, y: 9.22))
        path.addLine(to: CGPoint(x: 4.57, y: 11.02))
        path.addCurve(to: CGPoint(x: 4.5, y: 12),
                      control1: CGPoint(x: 4.53, y: 11.34),
                      control2: CGPoint(x: 4.5, y: 11.67))
        path.addCurve(to: CGPoint(x: 4.57, y: 12.98),
                      control1: CGPoint(x: 4.5, y: 12.33),
                      control2: CGPoint(x: 4.53, y: 12.66))
        path.addLine(to: CGPoint(x: 2.46, y: 14.63))
        path.addCurve(to: CGPoint(x: 2.34, y: 15.27),
                      control1: CGPoint(x: 2.27, y: 14.78),
                      control2: CGPoint(x: 2.22, y: 15.05))
        path.addLine(to: CGPoint(x: 4.34, y: 18.73))
        path.addCurve(to: CGPoint(x: 4.78, y: 18.98),
                      control1: CGPoint(x: 4.43, y: 18.89),
                      control2: CGPoint(x: 4.6, y: 18.98))
        path.addCurve(to: CGPoint(x: 4.95, y: 18.95),
                      control1: CGPoint(x: 4.84, y: 18.98),
                      control2: CGPoint(x: 4.9, y: 18.97))
        path.addLine(to: CGPoint(x: 7.44, y: 17.95))
        path.addCurve(to: CGPoint(x: 9.13, y: 18.93),
                      control1: CGPoint(x: 7.96, y: 18.35),
                      control2: CGPoint(x: 8.52, y: 18.68))
        path.addLine(to: CGPoint(x: 9.51, y: 21.58))
        path.addCurve(to: CGPoint(x: 10, y: 22),
                      control1: CGPoint(x: 9.54, y: 21.82),
                      control2: CGPoint(x: 9.75, y: 22))
        path.addLine(to: CGPoint(x: 14, y: 22))
        path.addCurve(to: CGPoint(x: 14.49, y: 21.58),
                      control1: CGPoint(x: 14.25, y: 22),
                      control2: CGPoint(x: 14.46, y: 21.82))
        path.addLine(to: CGPoint(x: 14.87, y: 18.93))
        path.addCurve(to: CGPoint(x: 16.56, y: 17.95),
                      control1: CGPoint(x: 15.48, y: 18.68),
                      control2: CGPoint(x: 16.04, y: 18.34))
        path.addLine(to: CGPoint(x: 19.05, y: 18.95))
        path.addCurve(to: CGPoint(x: 19.23, y: 18.98),
                      control1: CGPoint(x: 19.11, y: 18.97),
                      control2: CGPoint(x: 19.17, y: 18.98))
        path.addCurve(to: CGPoint(x: 19.66, y: 18.73),
                      control1: CGPoint(x: 19.4, y: 18.98),
                      control2: CGPoint(x: 19.57, y: 18.89))
        path.addLine(to: CGPoint(x: 21.66, y: 15.27))
        path.addCurve(to: CGPoint(x: 21.54, y: 14.63),
                      control1: CGPoint(x: 21.78, y: 15.05),
                      control2: CGPoint(x: 21.73, y: 14.78))
        path.addLine(to: CGPoint(x: 19.43, y: 12.98))
        path.closeSubpath()
        path.move(to: CGPoint(x: 17.45, y: 11.27))
        path.addCurve(to: CGPoint(x: 17.5, y: 12),
                      control1: CGPoint(x: 17.49, y: 11.58),
                      control2: CGPoint(x: 17.5, y: 11.79))
        path.addCurve(to: CGPoint(x: 17.45, y: 12.73),
                      control1: CGPoint(x: 17.5, y: 12.21),
                      control2: CGPoint(x: 17.48, y: 12.43))
        path.addLine(to: CGPoint(x: 17.31, y: 13.86))
        path.addLine(to: CGPoint(x: 18.2, y: 14.56))
        path.addLine(to: CGPoint(x: 19.28, y: 15.4))
        path.addLine(to: CGPoint(x: 18.58, y: 16.61))
        path.addLine(to: CGPoint(x: 17.31, y: 16.1))
        path.addLine(to: CGPoint(x: 16.27, y: 15.68))
        path.addLine(to: CGPoint(x: 15.37, y: 16.36))
        path.addCurve(to: CGPoint(x: 14.12, y: 17.09),
                      control1: CGPoint(x: 14.94, y: 16.68),
                      control2: CGPoint(x: 14.53, y: 16.92))
        path.addLine(to: CGPoint(x: 13.06, y: 17.52))
        path.addLine(to: CGPoint(x: 12.9, y: 18.65))
        path.addLine(to: CGPoint(x: 12.7, y: 20))
        path.addLine(to: CGPoint(x: 11.3, y: 20))
        path.addLine(to: CGPoint(x: 11.11, y: 18.65))
        path.addLine(to: CGPoint(x: 10.95, y: 17.52))
        path.addLine(to: CGPoint(x: 9.89, y: 17.09))
        path.addCurve(to: CGPoint(x: 8.66, y: 16.38),
                      control1: CGPoint(x: 9.46, y: 16.91),
                      control2: CGPoint(x: 9.06, y: 16.68))
        path.addLine(to: CGPoint(x: 7.75, y: 15.68))
        path.addLine(to: CGPoint(x: 6.69, y: 16.11))
        path.addLine(to: CGPoint(x: 5.42, y: 16.62))
        path.addLine(to: CGPoint(x: 4.72, y: 15.41))
        path.addLine(to: CGPoint(x: 5.8, y: 14.57))
        path.addLine(to: CGPoint(x: 6.69, y: 13.87))
        path.addLine(to: CGPoint(x: 6.55, y: 12.74))
        path.addCurve(to: CGPoint(x: 6.5, y: 12),
                      control1: CGPoint(x: 6.52, y: 12.43),
                      control2: CGPoint(x: 6.5, y: 12.2))
        path.addCurve(to: CGPoint(x: 6.55, y: 11.27),
                      control1: CGPoint(x: 6.5, y: 11.8),
                      control2: CGPoint(x: 6.52, y: 11.57))
        path.addLine(to: CGPoint(x: 6.69, y: 10.14))
        path.addLine(to: CGPoint(x: 5.8, y: 9.44))
        path.addLine(to: CGPoint(x: 4.72, y: 8.6))
        path.addLine(to: CGPoint(x: 5.42, y: 7.39))
        path.addLine(to: CGPoint(x: 6.69, y: 7.9))
        path.addLine(to: CGPoint(x: 7.73, y: 8.32))
        path.addLine(to: CGPoint(x: 8.63, y: 7.64))
        path.addCurve(to: CGPoint(x: 9.88, y: 6.91),
                      control1: CGPoint(x: 9.06, y: 7.32),
                      control2: CGPoint(x: 9.47, y: 7.08))
        path.addLine(to: CGPoint(x: 10.94, y: 6.48))
        path.addLine(to: CGPoint(x: 11.1, y: 5.35))
        path.addLine(to: CGPoint(x: 11.3, y: 4))
        path.addLine(to: CGPoint(x: 12.69, y: 4))
        path.addLine(to: CGPoint(x: 12.88, y: 5.35))
        path.addLine(to: CGPoint(x: 13.04, y: 6.48))
        path.addLine(to: CGPoint(x: 14.1, y: 6.91))
        path.addCurve(to: CGPoint(x: 15.33, y: 7.62),
                      control1: CGPoint(x: 14.53, y: 7.09),
                      control2: CGPoint(x: 14.93, y: 7.32))
        path.addLine(to: CGPoint(x: 16.24, y: 8.32))
        path.addLine(to: CGPoint(x: 17.3, y: 7.89))
        path.addLine(to: CGPoint(x: 18.57, y: 7.38))
        path.addLine(to: CGPoint(x: 19.27, y: 8.59))
        path.addLine(to: CGPoint(x: 18.2, y: 9.44))
        path.addLine(to: CGPoint(x: 17.31, y: 10.14))
        path.addLine(to: CGPoint(x: 17.45, y: 11.27))
        path.closeSubpath()
        path.move(to: CGPoint(x: 12, y: 8))
        path.addCurve(to: CGPoint(x: 8, y: 12),
                      control1: CGPoint(x: 9.79, y: 8),
                      control2: CGPoint(x: 8, y: 9.79))
        path.addCurve(to: CGPoint(x: 12, y: 16),
                      control1: CGPoint(x: 8, y: 14.21),
                      control2: CGPoint(x: 9.79, y: 16))
        path.addCurve(to: CGPoint(x: 16, y: 12),
                      control1: CGPoint(x: 14.21, y: 16),
                      control2: CGPoint(x: 16, y: 14.21))
        path.addCurve(to: CGPoint(x: 12, y: 8),
                      control1: CGPoint(x: 16, y: 9.79),
                      control2: CGPoint(x: 14.21, y: 8))
        path.closeSubpath()
        path.move(to: CGPoint(x: 12, y: 14))
        path.addCurve(to: CGPoint(x: 10, y: 12),
                      control1: CGPoint(x: 10.9, y: 14),
                      control2: CGPoint(x: 10, y: 13.1))
        path.addCurve(to: CGPoint(x: 12, y: 10),
                      control1: CGPoint(x: 10, y: 10.9),
                      control2: CGPoint(x: 10.9, y: 10))
        path.addCurve(to: CGPoint(x: 14, y: 12),
                      control1: CGPoint(x: 13.1, y: 10),
                      control2: CGPoint(x: 14, y: 10.9))
        path.addCurve(to: CGPoint(x: 12, y: 14),
                      control1: CGPoint(x: 14, y: 13.1),
                      control2: CGPoint(x: 13.1, y: 14))
        path.closeSubpath()
        return path
    }()
}

/// Scale the same Material vector to the icon's frame, without a platform font.
struct MaterialTabIconShape: Shape {
    let icon: MaterialTabIcon

    func path(in rect: CGRect) -> Path {
        let scale = min(rect.width, rect.height) / 24
        let transform = CGAffineTransform(
            a: scale, b: 0, c: 0, d: scale,
            tx: rect.midX - 12 * scale,
            ty: rect.midY - 12 * scale
        )
        return icon.viewportPath.applying(transform)
    }
}
