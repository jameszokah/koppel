import { View, Image, ImageSourcePropType, Platform } from 'react-native';
import tw from 'twrnc'
import {BlurView} from 'expo-blur'

/* eslint-disable-next-line */
export interface GlassViewProps {
  src1: ImageSourcePropType,
  src2: ImageSourcePropType
}

export function GlassView({src1,src2}: GlassViewProps) {


  if(Platform.OS === 'android') {
    return (
      <View style={[tw`bg-slate-50/80 p-10 rounded-xl`,{ height:'100%', width:'100%'}]}>
        <View style={[tw`absolute top-10 right-0`, {
        width: 120,
        height: 100,
        zIndex: -1
        
      }]}>
        <Image style={{width: '100',}} source={src1} resizeMode='contain' resizeMethod={'resize'} />
      </View>
      <View style={[tw`absolute bottom-[25rem] left-0`, {
        width: 350,
        height: 100,
        zIndex: -1
        
      }]}>
        <Image style={{width: '100'}} resizeMethod={'resize'} resizeMode='contain' source={src2} />
      </View>
      </View>
    );
  }

  
  return (
    <BlurView intensity={60} tint='default' style={{ height:'100%', width:'100%'}}>
      <View style={[tw`absolute top-10 right-0`, {
        width: 120,
        height: 100,
        zIndex: -1
        
      }]}>
        <Image style={{width: '100',}} source={src1} resizeMode='contain' resizeMethod={'resize'} />
      </View>
      <View style={[tw`absolute bottom-[25rem] left-0`, {
        width: 350,
        height: 100,
        zIndex: -1
        
      }]}>
        <Image style={{width: '100'}} resizeMethod={'resize'} resizeMode='contain' source={src2} />
      </View>
    </BlurView>
  );
}

export default GlassView;
