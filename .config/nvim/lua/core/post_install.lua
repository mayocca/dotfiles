return function()
  vim.api.nvim_buf_delete(0, { force = true }) -- 

  vim.schedule(function()
    vim.cmd("MasonInstallAll")

    -- keep track of which mason pkgs get installed
    local packages = table.concat(vim.g.mason_binaries_list, " ")

    require("mason-registry"):on("package:install:success", function(pkg)
      packages = string.gsub(packages, pkg.name:gsub("%-", "%%-"), "") -- rm package name

      if packages:match "%S" == nil then
        vim.schedule(function()
          vim.api.nvim_buf_delete(0, { force = true })
          vim.cmd("echo '' | redraw") -- clear cmdline
        end)
      end
    end)
  end)
end
