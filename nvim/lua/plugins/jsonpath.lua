return {
	{
		"mogelbrod/vim-jsonpath",
		ft = { "json" },
		config = function()
			-- Set the register used by jsonpath plugin (copy to * register)
			vim.g.jsonpath_register = "*"

			vim.keymap.set("n", "<localleader>c", function()
				vim.fn["jsonpath#echo"]()
			end, { desc = "Copy json path" })

			vim.keymap.set("n", "<localleader>g", function()
				vim.fn["jsonpath#goto"]()
			end, { desc = "Goto json path" })

			-- `jq` binary is required for this command to work
			vim.keymap.set("n", "<localleader>f", ":%!jq .<CR>", { desc = "Format JSON with jq" })
		end,
	},
}
