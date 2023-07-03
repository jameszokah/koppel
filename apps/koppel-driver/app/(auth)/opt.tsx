import { View, Text, StatusBar, StyleSheet, Image } from 'react-native';
import tw from 'twrnc';
import {GlassView, InputField, BlurOverlay, Btn} from '@koppel/ui';
import { TouchableRipple } from 'react-native-paper';

const OtpScreen = () => {
  return (
    <>
      <StatusBar />
      <View style={tw`flex w-full h-full`}>
      <GlassView src1={require('../../assets/Hexagon.png')} src2={require('../../assets/Spline.png')} />
        <BlurOverlay>
          <View style={tw` w-full`}>
            <Text
              style={tw`font-extrabold text-3xl subpixel-antialiased text-gray-900 text-center`}>
              {' '}
              OTP Sign In
            </Text>
            <Text
              style={tw`font-bold text-md subpixel-antialiased text-gray-600 pt-4 text-center`}>
              {' '}
              Welcome back, We miss you
            </Text>

             <InputField
              label="Phone Number"
              type="text"
              prefix={'+233'}
              onChangeText={(text) => console.log(text)}
            />
            <Btn
              title="Get Code"
              icon
              iconName="arrowright"
              iconType="antdesign"
              onPress={() => console.log('sign in button was pressed')}
            />
            
            <View
              style={[
                tw`mt-14`,
                {
                  borderBottomColor: 'lightgray',
                  borderBottomWidth: StyleSheet.hairlineWidth,
                },
              ]}>
              <View style={
                tw`absolute left-[50%] -top-1 flex justify-center items-center`}>
            <Text
                style={tw`font-extrabold text-md text-gray-400 text-center p-1`}>
                OR
              </Text>
            </View>
            </View>
            

            <View style={
                tw`flex flex-row  justify-center mt-14 mb-32`}>
            <Text
                style={tw`font-extrabold text-md text-gray-500 text-center p-1`}>
                Don't get code?
              </Text>
              <Text
                style={tw`font-extrabold text-md text-teal-600 text-center p-1`}>
                Resend
              </Text>
            </View>
          </View>
        </BlurOverlay>
        <View style={tw`flex absolute flex-row bottom-[8%] left-[45%] justify-center mt-7 `}>
              <TouchableRipple rippleColor='teal' style={tw`overflow-hidden rounded-3xl`} onPress={() => console.log('closed icon was pressed')} >
              <Image source={require('../assets/close.png')} style={tw``} resizeMethod='resize' resizeMode='contain' />
              </TouchableRipple>
            </View>
      </View>
    </>
  );
};

export default OtpScreen;
