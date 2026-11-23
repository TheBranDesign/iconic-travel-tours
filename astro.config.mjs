import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
  site: 'https://thebrandesign.github.io',
  base: '/iconic-travel-tours',
  trailingSlash: 'always',
  output: 'static',
  build: {
    format: 'directory'
  },
  integrations: [
    tailwind({
      applyBaseStyles: true,
    })
  ]
});
