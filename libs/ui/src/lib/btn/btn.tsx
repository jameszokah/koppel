import { Text, View } from 'react-native';
import tw from 'twrnc';
import { Icon } from '@rneui/themed';
import { TouchableRipple } from 'react-native-paper';

/* eslint-disable-next-line */
export interface BtnProps {
  title: string,
  icon?: boolean,
  iconName?: string,
  iconType?: string,
  onPress: () => void
}

export function Btn({ title, onPress, icon, iconName, iconType }: BtnProps) {
  return (
    <TouchableRipple
              style={tw`${icon ? 'rounded-tl-sm' : 'rounded-tl-3xl' } rounded-tr-3xl rounded-bl-3xl rounded-br-3xl mt-3 ${icon ? 'border-none' : 'border-2 border-teal-700/80' }`}
              borderless
              rippleColor='teal'
              onPress={onPress}>
              <View
                style={tw`${icon ? 'bg-teal-700/80' : 'bg-transparent' } rounded-tl-sm rounded-tr-3xl rounded-bl-3xl rounded-br-3xl flex flex-row justify-center items-center ${icon ? '' : 'px-3' } py-3`}>
                {icon && <Icon 
                // eslint-disable-next-line @typescript-eslint/no-non-null-assertion
                name={iconName!}
                type={iconType} 

                />}
                <Text
                  style={tw`font-extrabold text-md ${icon ? 'text-white' : 'text-gray-500' } text-center p-1`}>
                  {title}
                </Text>
              </View>
            </TouchableRipple>
  );
}

export default Btn;
