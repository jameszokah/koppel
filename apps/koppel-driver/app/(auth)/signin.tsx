import { View, Text, StatusBar, StyleSheet, Image } from 'react-native';
import tw from 'twrnc';
import {GlassView, InputField, BlurOverlay, Btn} from '@koppel/ui';
import { TouchableRipple } from 'react-native-paper';

const SigninScreen = () => {
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
              Sign In
            </Text>
            <Text
              style={tw`font-bold text-md subpixel-antialiased text-gray-600/60 pt-4 text-center`}>
              {' '}
              Access and Secure the best experience koppel offer's you
            </Text>

            <InputField
              label="Email"
              type="icon"
              prefix={require('../assets/email_input.png')}
              onChangeText={(text) => console.log(text)}
            />

            <InputField
              label="Password"
              type="signin"
              prefix={require('../assets/password_input.png')}
              onChangeText={(text) => console.log(text)}
            />

            <View style={tw``}>
              <Text style={tw`font-bold text-sm text-gray-500 text-right p-1`}>
                Forgot Password?
              </Text>
            </View>

            <Btn
              title="Sign In"
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
              <View
                style={tw`absolute left-[50%] -top-1 flex justify-center items-center`}>
                <Text
                  style={tw`font-extrabold text-md text-gray-400 text-center p-1`}>
                  OR
                </Text>
              </View>
            </View>

            <View style={tw`flex flex-row  justify-center mt-7 `}>
              <Text
                style={tw`font-bold text-md text-gray-500/80 text-center p-1`}>
                Sign up with Email, Apple or Google
              </Text>
            </View>


            <View style={tw`flex flex-row  justify-around mt-2 `}>
            <TouchableRipple rippleColor='teal' style={tw`overflow-hidden rounded-3xl`} onPress={() => console.log('email sign up icon pressed')} >
              <Image source={require('../assets/email.png')} style={tw``} resizeMethod='resize' resizeMode='contain' />
              </TouchableRipple>

              <TouchableRipple rippleColor='teal' style={tw`overflow-hidden rounded-3xl`} onPress={() => console.log('apple sign up icon pressed')} >
              <Image source={require('../assets/apple.png')} style={tw``} resizeMethod='resize' resizeMode='contain' />
              </TouchableRipple>

              <TouchableRipple rippleColor='teal' style={tw`overflow-hidden rounded-3xl`} onPress={() => console.log('google sign up icon pressed')} >
              <Image source={require('../assets/google.png')} style={tw``} resizeMethod='resize' resizeMode='contain' />
              </TouchableRipple>
            </View>
          </View>
        </BlurOverlay>

        <View style={tw`flex absolute flex-row bottom-[4%] left-[45%] justify-center mt-7 `}>
              <TouchableRipple rippleColor='teal' style={tw`overflow-hidden rounded-3xl`} onPress={() => console.log('closed icon was pressed')} >
              <Image source={require('../assets/close.png')} style={tw``} resizeMethod='resize' resizeMode='contain' />
              </TouchableRipple>
            </View>
      </View>
    </>
  );
};

export default SigninScreen;
