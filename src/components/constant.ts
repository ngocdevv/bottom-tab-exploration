import { Octicons } from "@expo/vector-icons";


export const TabsName: { label: string; icon: keyof typeof Octicons.glyphMap }[] = [
    {
        label: 'Home',
        icon: 'home',
    },
    {
        label: 'Discover',
        icon: 'search',
    },
    {
        label: 'Chat',
        icon: 'comment',
    },
    {
        label: 'More',
        icon: 'gear',
    },
];