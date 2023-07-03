import tw from 'twrnc'
import { View, Text } from 'react-native';
import { ReactNode } from 'react';

/* eslint-disable-next-line */
export interface BlurOverlayProps {
  children?: ReactNode
}

export function BlurOverlay({children}: BlurOverlayProps) {
  return (
    
    <View style={[tw`flex justify-center pl-5 pr-5 w-full h-full absolute`, {alignItems: 'center', justifyContent: 'center'}]}>
      <View style={tw`flex justify-center items-center w-full mr-10 ml-10 bg-slate-50/80 p-10 rounded-xl  absolute `}>
      {children}  
      </View>
      
    </View>
  );
}

export default BlurOverlay;
