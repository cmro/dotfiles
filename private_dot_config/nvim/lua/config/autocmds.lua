-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "*/defaults/**/*.yml",
    "*/group_vars/**/*.yml",
    "*/host_vars/**/*.yml",
    "*/vars/**/*.yml",
    "*/tasks/**/*.yml",
    "*/handlers/*.yml",
    "*/meta/*.yml",
    "*/roles/**/*.yml",
    "*/playbooks/**/*.yml",
  },
  callback = function()
    vim.bo.filetype = "yaml.ansible"
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "*/ansible/**/hosts",
    "*/ansible/**/inventory",
    "ansible.cfg",
  },
  callback = function()
    vim.bo.filetype = "dosini"
  end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function(args)
    local bufnr = args.buf
    local lines = vim.api.nvim_buf_get_lines(bufnr, 0, 5, false)
    for _, line in ipairs(lines) do
      if line:match("^%s*[%-%-%#%/%*]%s*noformat") then
        vim.b[bufnr].autoformat = false
        vim.notify("Autoformat disabled via modeline", vim.log.levels.DEBUG)
        break
      end
    end
  end,
})
