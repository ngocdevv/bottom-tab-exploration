import { Pressable, StyleSheet, View } from 'react-native';

import { Octicons } from '@expo/vector-icons';
import Animated, {
    interpolate,
    useAnimatedStyle,
    useDerivedValue,
    withSpring,
} from 'react-native-reanimated';

type TabProps = {
    label: string;
    maxWidth: number;
    minWidth: number;
    isActive: boolean;
    onPress: () => void;
    icon: keyof typeof Octicons.glyphMap;
};

const IconSize = 20;

export const TabItem = ({
    label,
    maxWidth,
    minWidth,
    isActive,
    onPress,
    icon,
}: TabProps) => {
    const progress = useDerivedValue(() => {
        return withSpring(isActive ? 1 : 0, {
            dampingRatio: 1,
            duration: 400,
        });
    }, [isActive]);

    const rTabStyle = useAnimatedStyle(() => {
        return {
            width: interpolate(progress.value, [0, 1], [minWidth, maxWidth]),
            backgroundColor: isActive ? "#ffffff10" : "#000000",
        };
    }, [isActive]);

    const gap = useDerivedValue(() => {
        return interpolate(progress.value, [0, 1], [0, 15]);
    }, []);

    const rTextStyle = useAnimatedStyle(() => {
        return {
            opacity: progress.value ** 3,
            marginLeft: gap.value,
        };
    }, [isActive]);

    const rIconStyle = useAnimatedStyle(() => {
        const translateX = interpolate(
            progress.value,
            [0, 1],
            [(minWidth - IconSize) / 2, IconSize],
        );
        return {
            left: translateX,
            position: 'absolute',
        };
    }, []);

    return (
        <Pressable onPress={onPress}>
            <Animated.View style={[rTabStyle, styles.container]}>
                <View style={styles.innerContainer}>
                    <Animated.View style={[styles.iconContainer, rIconStyle]}>
                        <Octicons name={icon} size={IconSize} color="white" />
                    </Animated.View>
                    <Animated.Text
                        numberOfLines={1}
                        key={label}
                        style={[styles.label, rTextStyle]}>
                        {label}
                    </Animated.Text>
                </View>
            </Animated.View>
        </Pressable>
    );
};

const styles = StyleSheet.create({
    container: {
        borderCurve: 'continuous',
        borderRadius: 100,
        height: 60,
        justifyContent: 'center',
    },
    iconContainer: {
        height: IconSize,
        width: IconSize,
        zIndex: 100,
    },
    innerContainer: {
        alignItems: 'center',
        flexDirection: 'row',
        justifyContent: 'center',
        overflow: 'hidden',
        width: '100%',
    },
    label: {
        fontSize: 16,
        fontWeight: '500',
        zIndex: 100,
        color: "white"
    },
});