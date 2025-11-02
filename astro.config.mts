// @ts-check
import { defineConfig } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';

import expressiveCode from 'astro-expressive-code';

import cloudflare from '@astrojs/cloudflare';

import metaTags from 'astro-meta-tags';

// https://astro.build/config
export default defineConfig({
  site: 'https://crystalbyexample.pages.dev',
  output: 'server',
  prefetch: true,
  vite: {
    plugins: [tailwindcss({ optimize: { minify: true } })],
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
    metaTags(),
  ],
  adapter: cloudflare(),
});
