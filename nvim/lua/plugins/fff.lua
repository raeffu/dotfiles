return {
	"dmtrKovalenko/fff.nvim",
	build = function()
		require("fff.download").download_or_build_binary()
	end,
	opts = { -- (optional)
		keymaps = {
			move_up = { "<Up>", "<C-p>", "<C-k>" },
			move_down = { "<Down>", "<C-n>", "<C-j>" },
		},
	},
	lazy = false,
	keys = {
		{
			"<leader>fF",
			function()
				require("fff").find_in_git_root()
			end,
			desc = "FFFind files (git root)",
		},
		{
			"<leader>ff",
			function()
				require("fff").find_files()
			end,
			desc = "FFFind files (cwd)",
		},
		{
			"<leader>f.",
			function()
				require("fff").find_files_in_dir(vim.fn.expand("%:p:h"))
			end,
			desc = "FFFind files (current dir)",
		},
	},
}
