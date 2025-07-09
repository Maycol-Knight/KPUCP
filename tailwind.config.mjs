/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}"],
  theme: {
    extend: {
      colors: {
        "kflow-blue": "#0EA5E9",
        "kflow-cyan": "#06B6D4",
        "kflow-dark": "#0F172A",
        "pucp-gold": "#DAA520",
      },
      fontFamily: {
        sans: ["Inter", "ui-sans-serif", "system-ui"],
      },
    },
  },
  plugins: [],
};
