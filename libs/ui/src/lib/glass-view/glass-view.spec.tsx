import React from 'react';
import { render } from '@testing-library/react-native';

import GlassView from './glass-view';

describe('GlassView', () => {
  it('should render successfully', () => {
    const { root } = render(<GlassView />);
    expect(root).toBeTruthy();
  });
});
