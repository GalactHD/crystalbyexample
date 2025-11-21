/**
 * Load a example from the ./public/code/* directory.
 * @param {string} example need to be lowercase.
 * @returns {Promise<string>}
 */
export const loadCode = async (example) => {
  const response = await fetch(`https://crystalbyexample.pages.dev/code/${example}.cr`);
  if (!response.ok)
    throw new Error(`Failed to load! Status: ${response.status}`);

  return await response.text();
};