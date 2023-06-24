import React from 'react';
import { render } from '@testing-library/react-native';

import BgGlass from './bg-glass';

describe('BgGlass', () => {
  it('should render successfully', () => {
    const { root } = render(<BgGlass />);
    expect(root).toBeTruthy();
  });
});
