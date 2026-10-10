package com.bottomtabexploration.ui.screens

import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview

/** Tương ứng với `src/screens/DiscoverScreen.tsx`. */
@Composable
fun DiscoverScreen() {
    ScreenContent(title = "Discover", subtitle = "Explore and find new content")
}

@Preview(showBackground = true)
@Composable
private fun DiscoverScreenPreview() {
    DiscoverScreen()
}
