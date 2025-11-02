import { useWindowDimensions, View } from 'react-native';

import { BottomTabBarProps } from '@react-navigation/bottom-tabs';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { TabsName } from './constant';
import { TabItem } from './tab-item';

export const BottomTabs: React.FC<BottomTabBarProps> = ({ state, navigation }) => {
  const currentIndex = state.index;
  const setActiveTabIndex = (index: number) => {
    navigation.navigate(state.routeNames[index]);
  };
  const { width: windowWidth } = useWindowDimensions();
  const gap = 10;

  const tabsWidth =
    windowWidth - gap * (TabsName.length - 1);

  const maxTabWidth = 140;
  const minTabWidth = (tabsWidth - maxTabWidth) / (TabsName.length - 1);
  const { bottom } = useSafeAreaInsets();


  return (
    <View
      style={{
        width: windowWidth,
        gap,
        flexDirection: 'row',
        paddingBottom: bottom,
        paddingTop: 12,
        backgroundColor: "#000000",
        borderTopColor: "#333333",
        borderTopWidth: 1,

      }}>
      {TabsName.map((tab, index) => (
        <TabItem
          onPress={() => {
            setActiveTabIndex(index);
          }}
          icon={tab.icon}
          key={index}
          label={tab.label}
          maxWidth={maxTabWidth}
          minWidth={minTabWidth}
          isActive={index === currentIndex}
        />
      ))}
    </View>
  );
};