import translations from './translations.json';

export const languages = {
  en: 'English',
  'pt-br': 'Português Brasil',
};

export const defaultLang = 'en';

export const showDefaultLang = false;

export const ui = {
  en: translations.en,
  'pt-br': translations['pt-br']
} as const;
