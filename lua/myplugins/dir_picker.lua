local M = {}
local snacks = require("snacks")
local oil = require("oil")

local excluded_folders = { ".git", "node_modules", ".cache" }

local function is_excluded(path)
	for _, excluded in ipairs(excluded_folders) do
		if path:find(excluded, 1, true) then
			return true
		end
	end
	return false
end

function M.pick_directory()
	local cwd = vim.fn.getcwd()
	local directories = {}

	local output = vim.fn.systemlist({
		"fd",
		"--type",
		"d",
		"--max-depth",
		"10",
		"--strip-cwd-prefix",
		".",
		"-H",
	})

	for _, relative_path in ipairs(output) do
		if not is_excluded(relative_path) then
			local full_path = vim.fn.fnamemodify(cwd .. "/" .. relative_path, ":p")
			table.insert(directories, {
				text = relative_path,
				file = full_path,
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
		layout = { preset = vim.o.columns >= 120 and "telescope" or "vertical" },
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
