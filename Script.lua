function onPlayerEntered(player)
	repeat wait() until player.Character ~= nil

	local sprintScriptClone = script.SprintScript:Clone()
	sprintScriptClone.Parent = player.Character
	sprintScriptClone.Disabled = false

	player.CharacterAdded:Connect(function(char)
		local sprintScriptClone = script.SprintScript:Clone()
		sprintScriptClone.Parent = char
		sprintScriptClone.Disabled = false
	end)
end

game.Players.PlayerAdded:Connect(onPlayerEntered)
