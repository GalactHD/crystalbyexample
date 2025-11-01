// @ts-check
import { defineConfig } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';

import expressiveCode from 'astro-expressive-code';

import cloudflare from '@astrojs/cloudflare';

// https://astro.build/config
export default defineConfig({
  output: 'server',
  prefetch: true,

  vite: {
    plugins: [tailwindcss()],
  },

  integrations: [
    expressiveCode({
      themes: ['min-dark'],
      frames: {
        showCopyToClipboardButton: false,
      },
      styleOverrides: {
        codeFontFamily: 'Roboto Mono Variable, monospace',
        codeFontSize: '0.95rem',
        frames: {
          shadowColor: 'box-shadow: none',
        },
      },
    }),
  ],

  adapter: cloudflare(),
});