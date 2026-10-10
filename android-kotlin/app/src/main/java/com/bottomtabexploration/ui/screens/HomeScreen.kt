package com.bottomtabexploration.ui.screens

import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview

/** Tương ứng với `src/screens/HomeScreen.tsx`. */
@Composable
fun HomeScreen() {
    ScreenContent(title = "Home", subtitle = "Welcome to the Home screen")
}

@Preview(showBackground = true)
@Composable
private fun HomeScreenPreview() {
    HomeScreen()
}
