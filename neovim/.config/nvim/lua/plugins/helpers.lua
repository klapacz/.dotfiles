local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local setup_packer_augrup = function()
    vim.cmd([[
      augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins/init.lua source <afile> | PackerCompile
      augroup end
    ]])
end

return {
    ensure_packer = ensure_packer,
    setup_packer_augrup = setup_packer_augrup
}