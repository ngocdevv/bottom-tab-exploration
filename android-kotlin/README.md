# BottomTabExploration – Android (Kotlin + Jetpack Compose)

Bản port native của app React Native ở thư mục gốc.

| React Native                      | Compose (`com.bottomtabexploration`)              |
| --------------------------------- | ------------------------------------------------- |
| `App.tsx`                         | `MainActivity.kt`, `navigation/AppNavigation.kt`  |
| `src/components/constant.ts`      | `ui/components/TabsName.kt`                       |
| `src/components/bottom-tabs.tsx`  | `ui/components/BottomTabs.kt`                     |
| `src/components/tab-item.tsx`     | `ui/components/TabItem.kt`                        |
| `src/screens/*Screen.tsx`         | `ui/screens/*Screen.kt` (+ `ScreenContent.kt`)    |

Icon Octicons được thay bằng Material Icons: `Home`, `Search`, `ChatBubbleOutline`, `Settings`.
Animation `withSpring({ dampingRatio: 1, duration: 400 })` → `animateFloatAsState` với spring không nảy,
stiffness tính từ duration (xem `durationSpring` trong `TabItem.kt`).
Điều hướng dùng Navigation Compose, route name trùng với label tab giống react-navigation.

## Chạy

```bash
./gradlew assembleDebug
./gradlew installDebug   # cài lên emulator/thiết bị đang kết nối
```

Hoặc mở thư mục này bằng Android Studio.

Yêu cầu: JDK 17+, Android SDK 36, minSdk 26.
