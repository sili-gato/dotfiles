require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

vim.g.mapleader = " "

-- save file with ctrl-s
map("n", "<C-s>", ":w<CR>", { noremap = true })
map("i", "<C-s>", "<C-o>:write<CR>a", { noremap = true })

-- for clearing highlight on search
map("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlights" })

-- J to move the current line down
map("n", "J", ":m .+1<CR>==", { desc = "move line down", noremap = true, silent = true })
-- K to move the current line up (use g? to show docs for something)
map("n", "K", ":m .-2<CR>==", { desc = "move line up", noremap = true, silent = true })

-- spliting windows
map("n", "<leader>ss", ":vsplit<CR>", { desc = "split window vertically" })
map("n", "<leader>sh", ":split<CR>", { desc = "split window horizontally" })
map("n", "<leader>sv", "<C-w>=", { desc = "make windows equal size" })
map("n", "<leader>sl", "<cmd>close<CR>", { desc = "close current split" })

-- telescope
map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "fuzzy find files in cwd" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "fuzzy find recent files" })
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "find string under cursor in cwd" })
map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "find todos" })
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "find string in cwd" })

-- lsp actions
map("n", "gD", vim.lsp.buf.declaration, { desc = "go to declaration" })                               -- go to declaration
map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "show LSP definitions" })               -- show LSP definitions
map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "show LSP implementations" })       -- show LSP implementations
map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "show LSP type definitions" })     -- show LSP type definitions
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "see available code actions" })     -- see available code actions, in visual mode will apply to selection
map("n", "<leader>srn", vim.lsp.buf.rename, { desc = "smart rename" })                                -- smart rename
map("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "show buffer diagnostics" }) -- show diagnostics for file
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "show line diagnostics" })                  -- show diagnostics for line
-- keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "go to previous diagnostic" }) -- jump to previous diagnostic in buffer
-- keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "go to next diagnostic" }) -- jump to next diagnostic in buffer
map("n", "g?", vim.lsp.buf.hover, { desc = "show documentation for what is under cursor" }) -- show documentation for what is under cursor
-- keymap.set("n", "<leader>rs", ":LspRestart<CR>", { desc = "restart LSP" }) -- mapping to restart lsp if necessary
