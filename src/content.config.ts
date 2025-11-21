import { defineCollection, reference, z } from 'astro:content';
import { glob } from 'astro/loaders';

const examples = defineCollection({
  loader: glob({ pattern: '**/*.{md,mdx}', base: './src/content/examples' }),
  schema: z.object({
    title: z.string(),
    order: z.number(),
    isLast: z.boolean().optional(),
    nextExample: z.array(reference('examples')),
  }),
});

export const collections = { examples };
