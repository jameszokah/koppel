import React from 'react';
import { render } from '@testing-library/react-native';

import Btn from './btn';

describe('Btn', () => {
  it('should render successfully', () => {
    const { root } = render(<Btn />);
    expect(root).toBeTruthy();
  });
});
