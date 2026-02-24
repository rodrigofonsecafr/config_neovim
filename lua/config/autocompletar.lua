return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- 1. Dizemos explicitamente quais fontes ele deve usar (sem o 'buffer')
      opts.sources.default = { "lsp", "path", "snippets" }
      -- 2. Garantimos que a tabela de provedores exista
      opts.sources.providers = opts.sources.providers or {}
      -- 3. "Desligamos a tomada" do buffer para o LazyVim não conseguir reativar
      opts.sources.providers.buffer = { enabled = false }
    end,
  },
}
