-- require('ripgrep').setup({});

local ripgrep = pcall(require, 'ripgrep');

if ripgrep then
    ripgrep.setup({})
end
