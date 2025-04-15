local M = {}
local snacks = require("snacks")
local oil = require("oil")

local excluded_folders = { ".git", "node_modules", ".cache" }

local function is_excluded(path)
	for _, excluded in ipairs(excluded_folders) do
		if path:find(excluded) then
			return true
		end
	end
	return false
end

function M.pick_directory()
	local cwd = vim.fn.getcwd()
	local directories = {}

	for name, type in vim.fs.dir(cwd, { depth = 10, follow = true }) do
		if type == "directory" and not is_excluded(name) then
			local full_path = vim.fs.joinpath(cwd, name)
			table.insert(directories, {
				text = name,
				file = vim.fn.fnamemodify(full_path, ":p"),
			})
		end
	end

	table.sort(directories, function(a, b)
		return a.text:lower() < b.text:lower()
	end)

	snacks.picker({
		title = "Directory",
		source = "Directories",
		items = directories,
		layout = { preset = vim.o.columns >= 120 and "default" or "vertical" },
		format = function(item, _)
			return {
				{ item.text },
			}
		end,
		confirm = function(picker, item)
			picker:close()
			oil.open(item.file)
		end,
	})
end

return M
