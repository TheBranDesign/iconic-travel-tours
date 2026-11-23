/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        brand: {
          emerald: '#063D30',
          forest: '#0A3026',
          gold: '#C7A66A',
          'gold-light': '#DFCA9B',
          'gold-dark': '#9E7E45',
          ivory: '#F8F5EE',
          'ivory-dark': '#EBE5D6',
          white: '#FFFFFF',
          charcoal: '#202421',
          'charcoal-light': '#363D38',
          'charcoal-muted': '#5C665F',
          red: '#D92732',
          'red-dark': '#B51B25',
        }
      },
      fontFamily: {
        serif: ['"Cormorant Garamond"', 'Playfair Display', 'Georgia', 'serif'],
        display: ['"Playfair Display"', '"Cormorant Garamond"', 'Georgia', 'serif'],
        sans: ['"Plus Jakarta Sans"', 'Inter', 'Manrope', 'system-ui', 'sans-serif'],
        arabic: ['Amiri', '"Noto Naskh Arabic"', 'serif'],
      },
      backgroundImage: {
        'emerald-gradient': 'linear-gradient(135deg, #063D30 0%, #0A3026 100%)',
        'gold-gradient': 'linear-gradient(135deg, #DFCA9B 0%, #C7A66A 50%, #9E7E45 100%)',
        'hero-overlay': 'linear-gradient(180deg, rgba(6,61,48,0.78) 0%, rgba(10,48,38,0.85) 60%, rgba(6,61,48,0.95) 100%)',
      },
      boxShadow: {
        'luxury': '0 20px 45px -15px rgba(6, 61, 48, 0.15)',
        'luxury-lg': '0 25px 60px -15px rgba(6, 61, 48, 0.25)',
        'gold-glow': '0 0 25px rgba(199, 166, 106, 0.35)',
      }
    },
  },
  plugins: [],
}
