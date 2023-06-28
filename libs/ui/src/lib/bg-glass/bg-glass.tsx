
import { View } from 'react-native';
import { Image } from 'react-native-svg';
import tw from 'twrnc';

/* eslint-disable-next-line */
export interface BgGlassProps {
  src1: string;
}

export function BgGlass({src1}: BgGlassProps) {
  return (
    <View style={tw`bg-blue-500`}>
      <View style={tw` `}>
        <Image href={src1}  />
      </View>
    </View>
  );
}

export default BgGlass;

