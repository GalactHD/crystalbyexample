// @ts-check
import { defineConfig } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';

import expressiveCode from 'astro-expressive-code';

import cloudflare from '@astrojs/cloudflare';

import metaTags from 'astro-meta-tags';

import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
  site: 'https://crystalbyexample.pages.dev',
  prefetch: true,
  i18n: {
    locales: ['en', 'pt-br'],
    defaultLocale: 'en',
    //fallback: { 'pt-br': 'en' },
    routing: {
      prefixDefaultLocale: false,
      redirectToDefaultLocale: true,
    },
  },
  vite: {
    plugins: [tailwindcss()],
    assetsInclude: ['**/*.cr'],
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
    sitemap({
      i18n: { defaultLocale: 'en', locales: { en: 'en-US', 'pt-br': 'pt-BR' } },
    }),
  ],
  adapter: cloudflare(),
});
