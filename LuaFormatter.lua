-- Made by Artyom Suu
-- MIT License Agreement
local Groups = require(script.Groups)

local Colors = {
	Keywords = {Color = "#F86D7C", Bold = true},
	Globals = {Color = "#84D6F7", Bold = false},
	Libraries = {Color = "#84D6F7", Bold = false},
	Enums = {Color = "#84D6F7", Bold = false},
	DataTypes = {Color = "#84D6F7", Bold = false},
	FunctionNames = {Color = "#FDFB95", Bold = false},
	Strings = {Color = "#ADF195", Bold = false},
	Properties = {Color = "#61A1F1", Bold = false},
	BoolValue = {Color = "#FFC600", Bold = true},
	Number = {Color = "#FFC600", Bold = false},
	Comment = {Color = "#646f7d", Bold = false}
}

local function formatWithColorAndBold(text, colorData)
	local color = colorData.Color
	local bold = colorData.Bold and string.format("<b>%s</b>", text) or text
	return string.format('<font color="%s">%s</font>', color, bold)
end

local function applyPatternOutsideTags(text, pattern, formatFunction)
	local result = {}
	local lastPos = 1
	local inTag = false

	text:gsub("(.-)(<.->)", function(outsideTag, tag)
		local formattedText = outsideTag:gsub(pattern, function(match)
			-- Only apply formatting if we are not inside a formatted tag
			if inTag or match:find('<font color=') then
				return match
			else
				return formatFunction(match)
			end
		end)

		table.insert(result, formattedText)
		table.insert(result, tag)
		lastPos = lastPos + #outsideTag + #tag
		inTag = tag:find("<font") ~= nil -- Detect if entering a font tag
	end)

	if lastPos <= #text then
		local remainingText = text:sub(lastPos)
		remainingText = remainingText:gsub(pattern, function(match)
			if inTag or match:find('<font color=') then
				return match
			else
				return formatFunction(match)
			end
		end)
		table.insert(result, remainingText)
	end

	return table.concat(result)
end

local function formatGroups(text)
	local newText = ""
	local lastPos = 1

	local function searchGroup(group, colorData, word)
		for key, value in pairs(group) do
			if type(value) == "table" then
				if word == key then return formatWithColorAndBold(word, colorData) end
				local result = searchGroup(value, colorData, word)
				if result then return result end
			else
				if word == value then return formatWithColorAndBold(word, colorData) end
			end
		end
		return nil
	end

	local function applyFirstMatch(word)
		for groupName, groupData in pairs(Groups) do
			local result = searchGroup(groupData, Colors[groupName], word)
			if result then return result end
		end
		return word
	end

	-- Modified loop to correctly skip tags
	local pos = 1
	while pos <= #text do
		local char = text:sub(pos, pos)

		if char == "<" then
			-- Detect the start of a tag and skip formatting inside it
			local tagEnd = text:find(">", pos)
			if tagEnd then
				newText = newText .. text:sub(pos, tagEnd)
				pos = tagEnd + 1
			else
				-- In case the tag is not properly closed
				newText = newText .. char
				pos = pos + 1
			end
		else
			-- Apply formatting to the next word outside tags
			local word, separator = text:match("([^%s%p]+)([%s%p]*)", pos)
			if word then
				newText = newText .. applyFirstMatch(word) .. separator
				pos = pos + #word + #separator
			else
				-- If no word is found, just move forward
				newText = newText .. char
				pos = pos + 1
			end
		end
	end

	-- Ensure no trailing whitespace or tabs are present
	return newText:gsub("%s+$", "")
end


local function formatFunctionCalls(text)
	return applyPatternOutsideTags(text, "(%w+)%s*%(", function(word)
		return formatWithColorAndBold(word, Colors.FunctionNames) .. "("
	end)
end

local function formatProperties(text)
	return applyPatternOutsideTags(text, "%.(%w+)", function(word)
		return not word:find('<font color=') and "." .. formatWithColorAndBold(word, Colors.Properties) or "." .. word
	end)
end

local function formatLiterals(text)
	-- First, format strings
	text = applyPatternOutsideTags(text, "\"(.-)\"", function(content)
		return formatWithColorAndBold('"' .. content .. '"', Colors.Strings)
	end)

	text = applyPatternOutsideTags(text, "%[%[(.-)%]%]", function(content)
		return formatWithColorAndBold("[[" .. content .. "]]", Colors.Strings)
	end)

	-- Then format numbers, booleans, and other patterns only outside strings
	text = applyPatternOutsideTags(text, "%f[%d]([+-]?%d+%.?%d*)%f[%D]", function(match)
		return formatWithColorAndBold(match, Colors.Number)
	end)

	text = applyPatternOutsideTags(text, "%f[%a](true)%f[%A]", function(match)
		return formatWithColorAndBold(match, Colors.BoolValue)
	end)

	text = applyPatternOutsideTags(text, "%f[%a](false)%f[%A]", function(match)
		return formatWithColorAndBold(match, Colors.BoolValue)
	end)

	return text
end

local function formatComments(text)
	return text:gsub("(%-%-.*)", function(comment)
		return formatWithColorAndBold(comment, Colors.Comment)
	end)
end

local function LuaFormatter(text)
    local lines = {}

    for line in text:gmatch("([^\n]*)\n?") do
        line = formatComments(line)

        if not line:find("%-%-") or line:find("^%s*%-%-") then
            line = formatLiterals(line)
            line = formatProperties(line)
            line = formatFunctionCalls(line)
            line = formatGroups(line)
        end

        table.insert(lines, line)
    end
    return table.concat(lines, "\n"):gsub("\n$", "")
end

return LuaFormatter