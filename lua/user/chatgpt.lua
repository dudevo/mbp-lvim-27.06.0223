local chatgpt = require("chatgpt")
local openai_api_key = vim.fn.getenv("OPENAI_API_KEY")

chatgpt.set_default_config({
  api_key_cmd = openai_api_key,
  openai_params = {
    model = "gpt-4-turbo-preview",
    -- frequency_penalty = 0,
    -- presence_penalty = 0,
    -- max_tokens = 300,
    -- temperature = 0,
    -- top_p = 1,
    -- n = 1,
  },
})

local function generate_response(prompt)
  local response = chatgpt.generate(prompt)
  -- Process the response as needed
  return response
end

-- Example usage
local prompt = "What is the meaning of life?"
local response = generate_response(prompt)
print(response)
