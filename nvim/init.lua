local ok, err = pcall(require, "core")
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
if not ok then
   error("Error loading core" .. "\n\n" .. err)
end
