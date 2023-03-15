-- souce : https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md 


local status1, mason = pcall(require,'mason')
if not status1 then
    print "some error in mason"
    return
end

local status2, mason_lspconfig = pcall(require,'mason-lspconfig')
if not status2 then
    print "some error in mason-lspconfig"
    return
end

local status3, mason_null = pcall(require,'mason-null-ls')
if not status3 then
    print "some error in null ls mason.lua"
    return
end


mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "sumneko_lua",
        -- "pyright",  -- python ( heavy , but with deep autocompletions )
        "jedi_language_server", -- python ( light weight , less feature-rich )
        -- "r_language_server",
        -- "jdtls",     --for java ( very heavy )
        "pylsp",
        "rust_analyzer",

    }

})

mason_null.setup({
    ensure_installed = {
        "prettier",
        "stylua",
        "eslint_d",
    }
})
