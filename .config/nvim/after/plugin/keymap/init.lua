local remap = require("yocca.keymap")
local nnoremap = remap.nnoremap
local vnoremap = remap.vnoremap
local inoremap = remap.inoremap
local xnoremap = remap.xnoremap
local nmap = remap.nmap

-- Fzf mappings
nnoremap("<C-f>", "<Cmd>Files<CR>")
nnoremap("<Leader>b", "<Cmd>Buffers<CR>")
nnoremap("<Leader>f", "<Cmd>Rg<CR>")

