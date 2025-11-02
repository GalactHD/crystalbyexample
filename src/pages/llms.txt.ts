import { getCollection } from 'astro:content';
import type { APIRoute } from 'astro';

export const GET: APIRoute = async () => {
  const examples = await getCollection('examples');
  const content = `# Crystal by example\n
    ${examples
      .sort((a, b) => a.data.order - b.data.order)
      .map((example) =>
          `# ${example.data.title}\n
            https://crystalbyexample.pages.dev/${example.id} \n
            ${example.data.title} \n
            ${example.body}`).join('\n\n')}`;

  return new Response(content, {
    headers: { 'Content-Type': 'text/plain; charset=utf-8' },
  });
};
