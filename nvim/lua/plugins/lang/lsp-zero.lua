local status_ok, lsp_zero = pcall(require, 'lsp-zero')
if not status_ok then
    return
end

-- lsp_zero.setup({})

-- local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
-- local lsp_format_on_save = function(bufnr)
--     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
--     vim.api.nvim_create_autocmd('BufWritePre', {
--         group = augroup,
--         buffer = bufnr,
--         callback = function()
--             vim.lsp.buf.format()
--             filter = function(client)
--                 return client.name == 'null-ls'
--             end
--         end,
--     })
-- end

-- lsp_zero.on_attach(function(client, bufnr)
--     local opts = { buffer = bufnr }
--     vim.keymap.set('n', '<Space>f', '<cmd>Lspsaga finder imp+def+ref<CR>', opts)
--     vim.keymap.set('n', '<Space>d', '<cmd>Lspsaga finder def<CR>', opts)
--     vim.keymap.set('n', '<Space>i', '<cmd>Lspsaga finder imp<CR>', opts)
--     vim.keymap.set('n', '<Space>r', '<cmd>Lspsaga finder ref<CR>', opts)
--     vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
--     vim.keymap.set({ 'n', 'v' }, '<Space>ca', '<cmd>Lspsaga code_action<CR>', opts)
--     vim.keymap.set('n', 'gD', '<cmd>Lspsaga peek_definition<CR>', opts)
--     vim.keymap.set('n', 'gT', '<cmd>Lspsaga peek_type_definition<CR>', opts)
--     vim.keymap.set('n', 'gd', '<cmd>Lspsaga goto_definition<CR>', opts)
--     vim.keymap.set('n', '<C-g>d', '<cmd>Lspsaga show_buf_diagnostics<CR>', opts)
--     vim.keymap.set('n', '<M-l>o', '<cmd>Lspsaga outline<CR>', opts)
--     vim.keymap.set({ 'n', 't' }, '<A-d>', '<cmd>Lspsaga term_toggle<CR>', opts)
--     vim.keymap.set({ 'n', 't' }, '<F2>', '<cmd>Lspsaga rename<CR>', opts)
--     lsp_format_on_save(bufnr)
-- end)

-- local installed_servers = require('plugins.list').lsp_servers
-- local lspconfig = require('lspconfig')
-- local server_settings = require('plugins.lang.servers-settings').server_settings
--
-- require('mason').setup({})
-- require('mason-lspconfig').setup({
--     ensure_installed = installed_servers,
--     handlers = {
--         lsp_zero.default_setup,
--         lua_ls = function()
--             local lua_opts = lsp_zero.nvim_lua_ls()
--             local custom_options = {
--                 enable = true,
--                 defaultConfig = {
--                     align_continuous_assign_statement = false,
--                     align_continuous_rect_table_field = false,
--                     align_array_table = false,
--                 },
--             }
--             lua_opts.settings.Lua.format = custom_options
--             lspconfig.lua_ls.setup(lua_opts)
--         end,
--     },
-- })
-- UI
-- local lsp_ui = require('lspconfig.ui.windows')
-- lsp_ui.default_options.border = 'rounded'

-- lsp_zero.set_sign_icons({
--     error = '✘',
--     warn = '',
--     hint = '',
--     info = '',
--     question = '',
-- })

-- local signs = { Error = '✘', Warn = '', Hint = '', Info = '', Question = '' }
-- for type, icon in pairs(signs) do
--     local hl = 'DiagnosticSign' .. type
--     vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
-- end
--
-- vim.diagnostic.config({
--     virtual_text = false,
-- })
