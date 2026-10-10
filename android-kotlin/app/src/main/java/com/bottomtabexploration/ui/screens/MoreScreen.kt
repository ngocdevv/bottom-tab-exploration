package com.bottomtabexploration.ui.screens

import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview

/** Tương ứng với `src/screens/MoreScreen.tsx`. */
@Composable
fun MoreScreen() {
    ScreenContent(title = "More", subtitle = "Additional options and settings")
}

@Preview(showBackground = true)
@Composable
private fun MoreScreenPreview() {
    MoreScreen()
}
