return {
    {
        'hrsh7th/nvim-cmp',
        version = false,
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip',
        },
        opts = function()
            -- Register nvim-cmp lsp capabilities
            vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })
            -- vim.lsp.config("rust_analyzer ", {
            --     settings = {
            --         ["rust-analyzer"] = {
            --             check = {
            --                 command = "clippy",
            --             },
            --         },
            --     },
            -- })

            local cmp = require("cmp")

            return {
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        print('Expanding snippet with body: ' .. args.body)
                        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
                    end,
                },
                mapping = {
                    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
                    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
                    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
                    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
                    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
                    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
                    ['<C-e>'] = cmp.mapping({
                        i = cmp.mapping.abort(),
                        c = cmp.mapping.close(),
                    }),
                    ['<C-CR>'] = cmp.mapping.confirm({ select = true }),
                    ['<C-k>'] = cmp.mapping.confirm({ select = true }),
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    -- { name = 'vsnip' }, -- For vsnip users.
                    { name = 'luasnip' }, -- For luasnip users.
                    -- { name = 'ultisnips' }, -- For ultisnips users.
                    -- { name = 'snippy' }, -- For snippy users.
                }, {
                    { name = 'buffer' },
                })
            }
        end
    },
    {
        'neovim/nvim-lspconfig',
    },
    {
        'mason-org/mason.nvim',
        opts = {},
    },
    {
        'mason-org/mason-lspconfig.nvim',
        opts = {},
    },
    {
        'L3MON4D3/LuaSnip',
        opts = {},
        init = function()
            local ls = require 'luasnip'
            ls.add_snippets('rust', {
                -- ls.parser.parse_snippet('OvisFoo', '[[ this is the foo ]]'),
            })
            print('LuaSnip initialized')
        end,
    },
}
