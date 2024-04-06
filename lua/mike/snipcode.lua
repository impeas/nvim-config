require("sniprun").setup({
})

vim.keymap.set('v', 'f', '<Plug>SnipRun')

_G.run_current_file = function()
    -- Get the current file name
    local file_name = vim.fn.expand('%:t')
    -- Get the extension of the current file
    local extension = vim.fn.expand('%:e')

    if extension == 'py' then
        -- Run the Python file
        vim.cmd('!python3 ' .. file_name)
    elseif extension == 'js' then
        -- Run the JavaScript file
        vim.cmd('!node ' .. file_name)
    else
        -- Notify the user if the file type is not supported
        print('File type not supported for execution')
    end
end

-- Set the keymap to use the function in normal mode
vim.api.nvim_set_keymap('n', '<leader>q', ':lua run_current_file()<CR>', {noremap = true, silent = true})
