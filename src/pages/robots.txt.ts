import type { APIRoute } from 'astro';

const getRobotsTxt = (sitemapURL: URL) => `\
Sitemap: ${sitemapURL.href}

User-agent: Googlebot
Allow: /

User-agent: Bingbot
Allow: /

User-agent: DuckDuckBot
Allow: /

User-agent: Yandex
Allow: /

Crawl-delay: 2
`;

export const GET: APIRoute = ({ site }) => {
  const sitemapURL = new URL('sitemap-index.xml', site);
  return new Response(getRobotsTxt(sitemapURL));
};
