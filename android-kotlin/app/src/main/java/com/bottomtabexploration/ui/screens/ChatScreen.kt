package com.bottomtabexploration.ui.screens

import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview

/** Tương ứng với `src/screens/ChatScreen.tsx`. */
@Composable
fun ChatScreen() {
    ScreenContent(title = "Chat", subtitle = "Your conversations")
}

@Preview(showBackground = true)
@Composable
private fun ChatScreenPreview() {
    ChatScreen()
}
