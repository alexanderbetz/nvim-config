vim.filetype.add {
  extensions = {
    ['blade.php'] = 'php',
    blade = 'php',
  },
  filename = {
    ['.prettierrc'] = 'json',
  },
}

vim.print 'hello'
