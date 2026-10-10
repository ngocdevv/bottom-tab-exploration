package com.bottomtabexploration.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawBehind
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp

private val HorizontalPadding = 12.dp
private val TabGap = 10.dp
private val MaxTabWidth = 140.dp
private val BorderColor = Color(0xFF333333)

/** Tương ứng với `src/components/bottom-tabs.tsx`. */
@Composable
fun BottomTabs(
    currentIndex: Int,
    onTabSelected: (Int) -> Unit,
    modifier: Modifier = Modifier,
) {
    BoxWithConstraints(
        modifier = modifier
            .fillMaxWidth()
            .background(Color.Black)
            // borderTopWidth: 1, borderTopColor: #333333
            .drawBehind {
                val stroke = 1.dp.toPx()
                drawLine(
                    color = BorderColor,
                    start = Offset(0f, stroke / 2),
                    end = Offset(size.width, stroke / 2),
                    strokeWidth = stroke,
                )
            }
            .padding(top = 12.dp)
            // paddingBottom: bottom (safe area inset)
            .windowInsetsPadding(WindowInsets.navigationBars)
            .padding(horizontal = HorizontalPadding)
    ) {
        val count = TabsName.size
        // Tổng chiều rộng còn lại cho các tab sau khi trừ khoảng cách giữa chúng.
        val tabsWidth = maxWidth - TabGap * (count - 1)
        val minWidth = (tabsWidth - MaxTabWidth) / (count - 1)

        Row(horizontalArrangement = Arrangement.spacedBy(TabGap)) {
            TabsName.forEachIndexed { index, tab ->
                TabItem(
                    label = tab.label,
                    icon = tab.icon,
                    maxWidth = MaxTabWidth,
                    minWidth = minWidth,
                    isActive = index == currentIndex,
                    onPress = { onTabSelected(index) },
                )
            }
        }
    }
}

@Preview(showBackground = true, backgroundColor = 0xFF000000, widthDp = 393)
@Composable
private fun BottomTabsPreview() {
    BottomTabs(currentIndex = 0, onTabSelected = {})
}
