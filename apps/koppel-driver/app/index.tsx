/* eslint-disable jsx-a11y/accessible-emoji */
import {
  SafeAreaView,
  View,
  StatusBar
} from 'react-native';
import tw from 'twrnc';

import { GlassView } from "@koppel/ui";



export const App = () => {

  return (
    <>
      <StatusBar barStyle="dark-content" />
      <SafeAreaView style={tw`flex-1 bg-white`}>
        <View style={tw`flex-1`}>
          <GlassView src1={require('../assets/Hexagon.png')} src2={require('../assets/Spline.png')} />
        </View>

      </SafeAreaView>
    </>
 )
  };


export default App;
