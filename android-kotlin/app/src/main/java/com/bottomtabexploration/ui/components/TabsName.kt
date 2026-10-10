package com.bottomtabexploration.ui.components

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.ChatBubbleOutline
import androidx.compose.material.icons.outlined.Home
import androidx.compose.material.icons.outlined.Search
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.ui.graphics.vector.ImageVector

/** Tương ứng với `src/components/constant.ts`. */
data class TabInfo(
    val label: String,
    /**
     * Material icon tương đương với Octicons:
     * home → Home, search → Search, comment → ChatBubbleOutline, gear → Settings.
     */
    val icon: ImageVector,
)

val TabsName: List<TabInfo> = listOf(
    TabInfo(label = "Home", icon = Icons.Outlined.Home),
    TabInfo(label = "Discover", icon = Icons.Outlined.Search),
    TabInfo(label = "Chat", icon = Icons.Outlined.ChatBubbleOutline),
    TabInfo(label = "More", icon = Icons.Outlined.Settings),
)
