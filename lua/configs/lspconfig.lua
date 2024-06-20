local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local servers = { "html", "cssls" }  -- List of other language servers

-- Configure html and css language servers with default settings
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
    }
end

-- Configure clangd for C++
lspconfig.clangd.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    cmd = { "clangd", "--background-index" },  -- Adjust cmd as needed
    filetypes = { "c", "cpp", "objc", "objcpp" },  -- Filetypes supported
    root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
}

-- Configure tsserver for TypeScript
lspconfig.tsserver.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

