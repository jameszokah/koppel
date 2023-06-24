/* eslint-disable jsx-a11y/accessible-emoji */
import {
  SafeAreaView,
  View,
  StatusBar,
  TouchableOpacity,
} from 'react-native';
import tw from 'twrnc';
import { BgGlass } from '@koppel/ui';



export const App = () => {

  return (
    <>
      <StatusBar barStyle="dark-content" />
      <SafeAreaView style={tw`flex-1 bg-white`}>
        <View style={tw`flex-1`}>
          <BgGlass src1='../../assets/svg/Hexagon.svg' />
        </View>

      </SafeAreaView>
    </>
 )
  };


export default App;
