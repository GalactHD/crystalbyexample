import { getCollection } from 'astro:content';
import type { APIRoute } from 'astro';

export const GET: APIRoute = async () => {
  const examples = await getCollection('examples');
  const sorted = examples.sort((a, b) => a.data.order - b.data.order);
  const sections = sorted.map((example) => {
    return [
      `# ${example.data.title}\n`,
      `https://crystalbyexample.pages.dev/${example.id}`,
      example.body?.trim(),
    ].join('\n');
  });

  const content = [
    '<SYSTEM>This is code examples about the Crystal Programming Language</SYSTEM>',
    '# Crystal by example',
    ...sections,
  ].join('\n\n');

  return new Response(content, {
    headers: { 'Content-Type': 'text/plain; charset=utf-8' },
  });
};
