package com.bottomtabexploration

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import com.bottomtabexploration.navigation.AppNavigation
import com.bottomtabexploration.ui.theme.BottomTabExplorationTheme

/**
 * Tương ứng với `App.tsx`.
 * `enableEdgeToEdge()` mô phỏng `edgeToEdgeEnabled: true` trong `app.json`;
 * phần safe-area (`useSafeAreaInsets`) được xử lý bằng WindowInsets trong Compose.
 */
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            BottomTabExplorationTheme {
                AppNavigation()
            }
        }
    }
}
