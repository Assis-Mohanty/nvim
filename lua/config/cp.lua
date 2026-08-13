local term = function(cmd)
  vim.cmd("write")
  vim.cmd("TermExec cmd='" .. cmd .. "'")
end

-- Compile & Run C
vim.keymap.set("n", "<F5>", function()
  term("gcc -Wall -Wextra -std=c17 % -o %:r && ./%:r")
end, { desc = "Compile & Run C" })

-- Compile & Run C++
vim.keymap.set("n", "<F6>", function()
  term("g++ -std=c++20 -O2 % -o %:r && ./%:r")
end, { desc = "Compile & Run C++" })

-- Run with input.txt
vim.keymap.set("n", "<F7>", function()
  term("./%:r < input.txt")
end, { desc = "Run with input" })

-- Diff output
vim.keymap.set("n", "<F8>", function()
  term("diff -u expected.txt output.txt")
end, { desc = "Diff output" })

-- Clean
vim.keymap.set("n", "<F9>", function()
  term("rm -f %:r")
end, { desc = "Clean binary" })
