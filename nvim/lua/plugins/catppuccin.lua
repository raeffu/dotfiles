return {
	"catppuccin/nvim",
	name = "catppuccin",
	tag = "v1.10.0", -- Pin to v1.10 to avoid a breaking change in V1.11 API
	priority = 1000,
	opts = {
		flavour = "auto",
		background = { -- :h background
			light = "latte",
			dark = "macchiato",
		},
	},
}
