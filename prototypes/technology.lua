if (settings.startup["zacs-tweaks-remove-long-handed-inserter"].value == true) then
	-- array of technologies to remove long handed inserter recipe unlock modifier from
	local technologies = { data.raw.technology["automation"] }

	local modifier = {}
	modifier.type = "unlock-recipe"
	modifier.recipe = "long-handed-inserter"

	for _, technology in pairs(technologies) do
		local old_effects = table.deepcopy(technology.effects)
		technology.effects = {}
		for _, effect in pairs(old_effects) do
			if not (effect and (effect.type == modifier.type) and (effect.recipe == modifier.recipe)) then
				technology.effects[#technology.effects + 1] = effect
			end
		end
	end
end	
