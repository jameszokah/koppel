import { PaperProvider } from 'react-native-paper';

import {
  // Import `SplashScreen` from `expo-router` instead of `expo-splash-screen`
  SplashScreen,

  // This example uses a basic Layout component, but you can use any Layout.
  Slot,
} from "expo-router";

import { useFonts, Poppins_400Regular } from "@expo-google-fonts/poppins";

export default function Layout() {
  // Load the font `Poppins_400Regular`
  const [fontsLoaded] = useFonts({
    Poppins_400Regular,
  });

  if (!fontsLoaded) {
    // The native splash screen will stay visible for as long as there
    // are `<SplashScreen />` components mounted. This component can be nested.

    return <SplashScreen />;
  }

  // Render the children routes now that all the assets are loaded.
  return (
  <PaperProvider>
    <Slot />  
  </PaperProvider>
  );
}