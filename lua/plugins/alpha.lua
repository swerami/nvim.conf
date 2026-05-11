return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		--
		-- change footer to orange
		dashboard.section.footer.opts.hl = "Type"

		-- Header
		dashboard.section.header.val = {
			"⣆⠈⠳⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠘⢦⡀⠀⠙⠲⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⢻⣍⠲⢄⡐⠤⣉⠓⠦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			",⡤⠽⢦⣀⠈⠑⠢⢍⣒⠤⣉⡒⠤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠙⢶⡀⠈⠙⠒⠤⣐⡪⠭⣒⡘⢍⡁⢍⣒⠢⢄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠰⡛⠓⠢⢤⣀⡀⠬⢝⣒⡪⢏⡈⠝⣒⡨⣿⢿⡑⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠈⣒⠤⢄⣀⡈⠍⣒⡒⠠⠵⣏⠙⠒⢺⣅⢿⡍⠀⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠑⢤⡀⠀⠈⠉⠒⠒⠫⠭⢼⣛⠒⠒⡧⣽⣏⡀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠠⡌⠙⠒⠊⠬⠭⠥⠤⠰⣞⡉⠉⣟⡵⣯⣠⠀⠑⢤⡀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠙⠲⠤⢀⡀⠀⠀⠀⠴⠦⢍⡉⢿⡜⡽⢸⢾⣦⣤⠉⡕⢲⣒⡆⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠰⢏⣉⠉⠀⣀⣠⢴⠖⠽⡴⣞⢿⣇⣎⠋⡇⢫⢻⡱⣞⣿⡤⡤⠄",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⢀⠖⠁⡴⢋⡤⡷⢿⢂⢿⢻⢹⢟⢳⢏⣯⣹⠳⡷⡀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣀⠤⢒⣟⠜⢁⡎⡝⡸⡶⢻⢳⢯⣢⠻⡝⡌⢮⠿",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣊⠴⠻⠜⢠⡇⠃⢸⡸⠀⣧⠃⢸⢆⡼⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢫⣠⠋⡇⢠⠎⢧⢂⡜⠢⠎⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠙⠉⠀⠈⠉⠀⠀⠀⠀⠀⠀",
		}

		-- Buttons
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
			dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
			dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
		}

		-- Footer quote
		dashboard.section.footer.val = "“A ship is safe in harbor, but that’s not what ships are for.”"

		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
