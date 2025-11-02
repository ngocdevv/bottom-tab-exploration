import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { NavigationContainer } from '@react-navigation/native';
import React from 'react';
import { SafeAreaProvider } from 'react-native-safe-area-context';

// Import screens
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { BottomTabs } from './src/components/bottom-tabs';
import ChatScreen from './src/screens/ChatScreen';
import DiscoverScreen from './src/screens/DiscoverScreen';
import HomeScreen from './src/screens/HomeScreen';
import MoreScreen from './src/screens/MoreScreen';

const Tab = createBottomTabNavigator();

const App = () => {
  return (
    <GestureHandlerRootView style={{ flex: 1 }}>
      <SafeAreaProvider>
        <NavigationContainer>
          <Tab.Navigator
            tabBar={(props) => <BottomTabs {...props} />}
            screenOptions={{
              headerShown: false,
            }}
          >
            <Tab.Screen name="Home" component={HomeScreen} />
            <Tab.Screen name="Discover" component={DiscoverScreen} />
            <Tab.Screen name="Chat" component={ChatScreen} />
            <Tab.Screen name="More" component={MoreScreen} />
          </Tab.Navigator>
        </NavigationContainer>
      </SafeAreaProvider>
    </GestureHandlerRootView>
  );
};

export default App;