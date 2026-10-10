package com.bottomtabexploration.navigation

import androidx.compose.animation.EnterTransition
import androidx.compose.animation.ExitTransition
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.navigation.NavGraph.Companion.findStartDestination
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.compose.rememberNavController
import com.bottomtabexploration.ui.components.BottomTabs
import com.bottomtabexploration.ui.components.TabsName
import com.bottomtabexploration.ui.screens.ChatScreen
import com.bottomtabexploration.ui.screens.DiscoverScreen
import com.bottomtabexploration.ui.screens.HomeScreen
import com.bottomtabexploration.ui.screens.MoreScreen

/**
 * Tương ứng với `NavigationContainer` + `Tab.Navigator` trong `App.tsx`.
 * Route name chính là `label` của tab ("Home", "Discover", "Chat", "More").
 */
@Composable
fun AppNavigation() {
    val navController = rememberNavController()
    val backStackEntry by navController.currentBackStackEntryAsState()
    val currentRoute = backStackEntry?.destination?.route
    val currentIndex = TabsName.indexOfFirst { it.label == currentRoute }.coerceAtLeast(0)

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black)
    ) {
        NavHost(
            navController = navController,
            startDestination = TabsName.first().label,
            modifier = Modifier
                .weight(1f)
                .fillMaxWidth(),
            // Bottom tab của react-navigation không có animation chuyển màn.
            enterTransition = { EnterTransition.None },
            exitTransition = { ExitTransition.None },
            popEnterTransition = { EnterTransition.None },
            popExitTransition = { ExitTransition.None },
        ) {
            composable("Home") { HomeScreen() }
            composable("Discover") { DiscoverScreen() }
            composable("Chat") { ChatScreen() }
            composable("More") { MoreScreen() }
        }

        BottomTabs(
            currentIndex = currentIndex,
            onTabSelected = { index ->
                // Tương ứng `navigation.navigate(state.routeNames[index])`.
                navController.navigate(TabsName[index].label) {
                    popUpTo(navController.graph.findStartDestination().id) { saveState = true }
                    launchSingleTop = true
                    restoreState = true
                }
            }
        )
    }
}
