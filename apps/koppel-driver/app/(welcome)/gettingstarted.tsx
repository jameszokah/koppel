import { View, Text, StatusBar} from 'react-native';
import tw from 'twrnc';
import {GlassView} from '@koppel/ui';
import { TouchableRipple } from 'react-native-paper';
import {BlurView} from 'expo-blur'

const GettingStartedScreen = () => {
  return (
    <>
      <StatusBar />
      <View style={tw`flex w-full h-full`}>
      <GlassView src1={require('../../assets/Hexagon.png')} src2={require('../../assets/Spline.png')} />
        

        <View style={tw`flex absolute w-full h-full`}>
       <View style={tw`absolute ml-4 top-30`}>
       <Text style={tw`font-black text-3xl`} >
          Premium {'\n'}Transportation {'\n'}and Delivery
       </Text>
      </View>
        
        <View style={tw`absolute top-[44%] mr-3 right-3`}>
       <Text style={tw`font-bold text-gray-500 text-right text-2xl`} >
          Manage your rides {'\n'}with your personal {'\n'}car, Earn more with {'\n'}Koppel
       </Text>
      </View>

      <View style={tw`absolute bottom-[16%] mr-3 left-12`}>
    
       <View style={tw`bg-teal-800 shadow-2xl shadow-teal-900 rounded-2xl blur-3xl px-18 py-6`} >
       <BlurView style={[tw`bg-transparent absolute -left-[20%] -top-[200%] rounded-2xl blur-md px-24 py-9 backdrop-blur-lg`, {
         overflow: 'hidden',
         shadowColor: 'teal',
         shadowOffset: {
            height: 4,
            width: 8
         },
         shadowOpacity: 0.8,
         shadowRadius: 20
       }]} >
          
       </BlurView>
       <TouchableRipple
              style={tw`rounded-tl-3xl rounded-tr-3xl rounded-bl-3xl rounded-br-3xl bg-slate-50/70 absolute -right-28 top-[30%] hover:bg-slate-200 shadow-2xl shadow-teal-900 rounded-3xl blur-3xl px-6 py-4`}
              borderless
              onPress={() => console.log('Sending Code for verification')}>
          <View style={tw``} >
          <Text style={tw`font-bold text-2xl text-gray-500`} >
         Getting Started
       </Text>
       </View>
        </TouchableRipple>
       </View>
      </View>
      </View>
      </View>
    </>
  );
};

export default GettingStartedScreen;
