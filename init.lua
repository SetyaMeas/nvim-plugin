local lazypath = vim.fn.stdpath("data") .. "/site/pack/packer/start/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--depth=1",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

local opts = {
  event = "VimEnter",
}

require("vim-options")
require("lazy").setup("plugins")

