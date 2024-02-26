return {
	"mfussenegger/nvim-lint",
	linters = {
		pylint = {
			prepend_args = { "--max-line-length=100" },
		},
	},
}
