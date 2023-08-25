
if mods["aai-programmable-vehicles"] and mods["spidertron-extended"] then
	-- 4 rocket launchers results in 4 variants
	-- to fix we change the guns on spidertronmk2 and mk3 to only 1 rocket launcher
	-- then re add the 4 guns in final-fixes since we will run after aai adds vehicles w/ ai
	
	if data.raw["spider-vehicle"].spidertronmk2 and data.raw["spider-vehicle"].spidertronmk2.guns then
		log("Readding spidertronmk2 weapons")
		data.raw["spider-vehicle"].spidertronmk2.guns = {
			"spidertronmk2-rocket-launcher-1",
			"spidertronmk2-rocket-launcher-2",
			"spidertronmk2-rocket-launcher-3",
			"spidertronmk2-rocket-launcher-4"
		}
	end
	if data.raw["spider-vehicle"].spidertronmk3 and data.raw["spider-vehicle"].spidertronmk3.guns then
		log("Readding spidertronmk3 weapons")
		data.raw["spider-vehicle"].spidertronmk3.guns = {
			"spidertronmk3-rocket-launcher-1",
			"spidertronmk3-rocket-launcher-2",
			"spidertronmk3-rocket-launcher-3",
			"spidertronmk3-rocket-launcher-4"
		}
	end
end

