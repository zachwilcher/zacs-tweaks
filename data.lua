require("prototypes.technology")

local transport_group = nil
local circuit_group = nil

if mods["SchallTransportGroup"] then
        transport_group = "transport"
end

if mods["SchallCircuitGroup"] then
        circuit_group = "circuit"
end

if mods["aai-programmable-vehicles"] then

        if transport_group then
            log("Setting item-subgroup: cars to: " .. transport_group)
            data.raw["item-subgroup"]["cars"].group = transport_group

            log("Setting item-subgroup: ai-vehicles to: " .. transport_group)
            data.raw["item-subgroup"]["ai-vehicles"].group = transport_group

            log("Setting item-subgroup: ai-vehicles-reverse to: " .. transport_group)
            data.raw["item-subgroup"]["ai-vehicles-reverse"].group = transport_group
        end

        if circuit_group then
            log("Setting item-subgroup: programmable-structures to: " .. circuit_group)
            data.raw["item-subgroup"]["programmable-structures"].group = circuit_group

        end

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


if mods["aai-programmable-structures"] then
    if circuit_group then
        log("Setting item-subgroup: programmable-structures to: " .. circuit_group)
        data.raw["item-subgroup"]["programmable-structures"].group = circuit_group
    end
end


