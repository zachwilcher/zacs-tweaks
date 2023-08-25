require("prototypes.technology")
require("prototypes.item-groups")

if mods["aai-programmable-vehicles"] then

  if mods["spidertron-extended"] then
    -- 4 rocket launchers results in 4 ai variants
    -- to fix we change the guns on spidertronmk2 and mk3 to only 1 rocket launcher
    -- then re add the 4 guns in final-fixes since we will run after aai adds vehicles w/ ai
    if data.raw["spider-vehicle"].spidertronmk2 and data.raw["spider-vehicle"].spidertronmk2.guns then
      log("Temporarily removing spidertronmk2 weapons")
      data.raw["spider-vehicle"].spidertronmk2.guns = {"spidertronmk2-rocket-launcher-1"}
    end
    if data.raw["spider-vehicle"].spidertronmk3 and data.raw["spider-vehicle"].spidertronmk3.guns then
      log("Temporarily removing spidertronmk3 weapons")
      data.raw["spider-vehicle"].spidertronmk3.guns = {"spidertronmk3-rocket-launcher-1"}
    end
  end
end



