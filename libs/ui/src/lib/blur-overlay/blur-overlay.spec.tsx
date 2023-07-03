import React from 'react';
import { render } from '@testing-library/react-native';

import BlurOverlay from './blur-overlay';

describe('BlurOverlay', () => {
  it('should render successfully', () => {
    const { root } = render(<BlurOverlay />);
    expect(root).toBeTruthy();
  });
});
