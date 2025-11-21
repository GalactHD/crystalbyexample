/**
 * Load a example from the ./public/code/* directory.
 * @param {string} example
 * @returns {Promise<string>}
 */
export const loadCode = async (example) => {
  const response = await fetch(`http://localhost:4321/code/${example.toLowerCase()}.cr`);
  if (!response.ok)
    throw new Error(`Failed to load! Status: ${response.status}`);

  return await response.text();
};
