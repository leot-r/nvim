---@type vim.lsp.Config
return {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Safely stops lua_ls from complaining about the global 'vim' variable
        globals = { 'vim' },
      },
      workspace = {
        -- Disable annoying popup prompts to configure your workspace environment
        checkThirdParty = false,
        -- Tells the server where to look for Neovim's internal core function APIs
        library = vim.api.nvim_get_runtime_file('', true),
      },
      telemetry = {
        -- Stop sending analytical metrics tracking data out
        enable = false,
      },
    },
  },
}

