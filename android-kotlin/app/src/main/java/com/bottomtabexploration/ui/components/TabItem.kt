package com.bottomtabexploration.ui.components

import androidx.compose.animation.core.Spring
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.spring
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.lerp
import androidx.compose.ui.unit.sp

private val IconSize = 20.dp
private val TabHeight = 60.dp
private val IconColor = Color(0xFF323232)

/**
 * Tương ứng với `src/components/tab-item.tsx`.
 *
 * `progress` (0 → 1) được animate bằng spring không nảy, giống
 * `withSpring(isActive ? 1 : 0, { dampingRatio: 1, duration: 400 })` bên Reanimated.
 * Mọi giá trị khác (width, màu nền, opacity, marginLeft) đều được nội suy từ `progress`.
 */
@Composable
fun TabItem(
    label: String,
    icon: ImageVector,
    maxWidth: Dp,
    minWidth: Dp,
    isActive: Boolean,
    onPress: () -> Unit,
) {
    val progress by animateFloatAsState(
        targetValue = if (isActive) 1f else 0f,
        animationSpec = durationSpring(durationMillis = 400),
        label = "tabProgress",
    )

    // interpolate(progress, [0, 1], [minWidth, maxWidth])
    val width = lerp(minWidth, maxWidth, progress)
    // interpolateColor(progress, [0, 1], ["#000000", "#ffffff"])
    val backgroundColor = lerp(Color.Black, Color.White, progress)
    // interpolate(progress, [0, 1], [0.8, 1])
    val iconAlpha = lerp(0.8f, 1f, progress)
    // interpolate(progress, [0, 1], [0, 12])
    val labelGap = lerp(0.dp, 12.dp, progress)

    val interactionSource = remember { MutableInteractionSource() }

    Box(
        modifier = Modifier
            .width(width)
            .height(TabHeight)
            // borderRadius: 100 trên chiều cao 60 → viên thuốc (pill)
            .clip(CircleShape)
            .background(backgroundColor)
            .clickable(
                interactionSource = interactionSource,
                indication = null,
                onClick = onPress,
            ),
        contentAlignment = Alignment.Center,
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .clipToBounds(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = androidx.compose.foundation.layout.Arrangement.Center,
        ) {
            Icon(
                imageVector = icon,
                contentDescription = label,
                tint = IconColor,
                modifier = Modifier
                    .size(IconSize)
                    .alpha(iconAlpha),
            )
            if (isActive) {
                Text(
                    text = label,
                    fontSize = 16.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = Color.Black,
                    maxLines = 1,
                    softWrap = false,
                    modifier = Modifier
                        .padding(start = labelGap)
                        .alpha(progress),
                )
            }
        }
    }
}

private fun lerp(start: Float, stop: Float, fraction: Float): Float =
    start + (stop - start) * fraction

/**
 * Spring không nảy (dampingRatio = 1) kết thúc sau ~[durationMillis].
 * Với spring tới hạn, thời gian ổn định ≈ 6.6 / sqrt(stiffness) giây.
 */
private fun durationSpring(durationMillis: Int) = spring<Float>(
    dampingRatio = Spring.DampingRatioNoBouncy,
    stiffness = run {
        val seconds = durationMillis / 1000f
        val omega = 6.6f / seconds
        omega * omega
    },
)
