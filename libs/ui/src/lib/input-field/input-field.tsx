
import { Text, View, TextInput, Image, ImageSourcePropType } from 'react-native';
import tw from 'twrnc';

/* eslint-disable-next-line */
export interface InputFieldProps {
  label: string,
  type: string,
  onChangeText: (text: string) => void | undefined,
  prefix: string | ImageSourcePropType
}

export function InputField({ label, onChangeText, prefix, type }: InputFieldProps) {
  return (
    <View style={tw`flex flex-column mb-3`}>
      <Text style={tw`font-bold text-md  text-gray-400 pt-1 text-left`}>
        {label}
      </Text>

      <View
        style={tw`flex flex-row justify-center items-center border rounded-lg p-1 mt-1 w-full border-gray-400/50`}>
        {type === 'text' ? (
          <View
            style={tw`w-10 h-5 bg-teal-900/60 rounded-md ml-1 flex justify-center items-center`}>
            <Text style={tw`font-bold text-xs text-white text-center p-1`}>
              {prefix as string}
            </Text>
          </View>
        ) : (
          <View
            style={tw`w-10 h-5 ml-1 flex justify-center items-center`}>
            <Image
              source={prefix as ImageSourcePropType}
              resizeMode="contain"
              resizeMethod="resize"
            />
          </View>
        )}
        <TextInput
          style={tw`w-full  w-[86%] py-[0.5rem] mr-1 ml-1 rounded-md`}
          onChangeText={onChangeText}
        />
      </View>
    </View>
  );
}

export default InputField;
