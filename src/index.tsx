import { NativeModules } from 'react-native';

type AmpupSmartCarType = {
  multiply(a: number, b: number): Promise<number>;
};

const { AmpupSmartCar } = NativeModules;

export default AmpupSmartCar as AmpupSmartCarType;
