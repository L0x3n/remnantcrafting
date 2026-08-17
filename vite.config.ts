import { defineConfig } from 'vite';

// Relative base so the built site works from any subpath (GitHub Pages included).
export default defineConfig({
  base: './',
  server: { port: 5280, strictPort: true },
  preview: { port: 5281, strictPort: true },
  build: { target: 'es2022' },
});
