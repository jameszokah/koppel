
import { Dimensions, View } from 'react-native';
import { Image } from 'expo-image';
import tw from 'twrnc';
import { useEffect, useState } from 'react';

/* eslint-disable-next-line */
export interface BgGlassProps {
  src1: string;
}

const windowDimensions = Dimensions.get('window');
const screenDimensions = Dimensions.get('screen');



export function BgGlass({src1}: BgGlassProps) {

  const [dimensions, setDimensions] = useState({
    window: windowDimensions,
    screen: screenDimensions,
  });

  useEffect(() => {
    const subscription = Dimensions.addEventListener(
      'change',
      ({window, screen}) => {
        setDimensions({window, screen});
      },
    );
    return () => subscription?.remove();
  });

  return (
    <View style={tw``}>
      <View style={tw`h-full w-full relative`}>
        <Image source={src1} contentFit='contain' contentPosition={'top right'} style={tw`h-44 w-24 absolute top-12 -right-[${((dimensions.screen.width * 0.3) / 2) + 15}]`} />
      </View>
    </View>
  );
}

export default BgGlass;

