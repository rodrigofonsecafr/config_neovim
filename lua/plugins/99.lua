return {
  "ThePrimeagen/99",
  config = function()
    local _99 = require("99")

    -- Expande o caminho a partir da sua pasta home (~)
    -- (Verifique se a pasta se chama 'obsdian' ou 'obsidian' no seu sistema)
    local context_dir = vim.fn.expand("~projetos/rdst/ruralvision/obsdian/ia/")

    _99.setup({
      -- Provedor usando sua conta do Claude
      provider = _99.Providers.ClaudeCodeProvider,

      -- Arquivos que o 99 vai ler SEMPRE como contexto base:
      md_files = {
        context_dir .. "rural-vision-context.md",
        context_dir .. "guia-estilo-programacao.md",
        -- Se os arquivos no seu Obsidian não tiverem a extensão '.md', use assim:
        -- context_dir .. "ruralvision-context",
        -- context_dir .. "guia-implementacao",
      },
    })

    -- Atalhos no LazyVim (espaço + 9 + ...)
    vim.keymap.set("v", "<leader>9v", _99.visual, { desc = "99: Solicitar IA (Visual)" })
    vim.keymap.set("n", "<leader>9s", _99.search, { desc = "99: Pesquisar no projeto" })
    vim.keymap.set("n", "<leader>9x", _99.stop_all_requests, { desc = "99: Cancelar requisições" })
  end,
}
