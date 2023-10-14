local openai_api_key = vim.fn.getenv("OPENAI_API_KEY")

require("chatgpt").setup({
  api_key_cmd = openai_api_key })
