# BottomTabExploration – iOS (SwiftUI)

Bản port native của app React Native ở thư mục gốc.

| React Native                      | SwiftUI                                              |
| --------------------------------- | ---------------------------------------------------- |
| `App.tsx`                         | `BottomTabExplorationApp.swift`, `ContentView.swift` |
| `src/components/constant.ts`      | `Components/TabsName.swift`                          |
| `src/components/bottom-tabs.tsx`  | `Components/BottomTabs.swift`                        |
| `src/components/tab-item.tsx`     | `Components/TabItem.swift`                           |
| `src/screens/*Screen.tsx`         | `Screens/*Screen.swift` (+ `ScreenContent.swift`)    |

Icon dùng đúng vector Material của bản Kotlin: `Home`, `Search`, `ChatBubbleOutline`, `Settings`.
Các path AndroidX được render bằng SwiftUI `Shape` trong `Components/MaterialTabIcon.swift`.

Animation dùng cùng spring tới hạn với `durationSpring(400)` bên Kotlin (stiffness 272.25,
damping 33). Một progress điều khiển chiều rộng, màu nền, opacity icon/nhãn và khoảng cách
icon–nhãn. Nhãn tab cũ bị xóa ngay khi bỏ chọn; pill vẫn co lại và đổi màu. Màu đen–trắng
được nội suy theo Oklab như Compose. Nút không đổi opacity khi đang nhấn.

Nội dung mở rộng đến mép trên màn hình như Kotlin edge-to-edge; tab bar vẫn giữ safe area dưới.

## Chạy

```bash
open BottomTabExploration/BottomTabExploration.xcodeproj
```

Hoặc build bằng dòng lệnh:

```bash
cd BottomTabExploration
xcodebuild -scheme BottomTabExploration -sdk iphonesimulator \
  -destination 'generic/platform=iOS Simulator' build
```

Yêu cầu: Xcode 16+, iOS 17+.
