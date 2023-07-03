import React from 'react';
import { render } from '@testing-library/react-native';

import InputField from './input-field';

describe('InputField', () => {
  it('should render successfully', () => {
    const { root } = render(<InputField />);
    expect(root).toBeTruthy();
  });
});
