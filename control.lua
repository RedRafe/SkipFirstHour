require "config"

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	
	-- In Freeplay mode, the character is created before the cutscene but the
	-- inventory seems to be inaccessible before it ends. This works around
	-- the problem by just ending the cutscene.
	pcall(player.exit_cutscene)
	
	for _,item in pairs(ITEM_LIST) do
		if game.item_prototypes[item[1]] ~= nul then
			player.insert{name=item[1], count=item[2]}
		else
			player.print("Unable to add \"" .. item[1] .. "\" to inventory, please check spelling.")
		end
	end
end)












