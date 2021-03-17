
local function update_group(name, group)
    if data.raw["item-subgroup"][name] then
        log("Setting item-subgroup: " .. name .. " to: " .. group)
        data.raw["item-subgroup"][name].group = group
    end
end

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
            update_group("cars", transport_group)

            update_group("ai-vehicles", transport_group)

            update_group("ai-vehicles-reverse", transport_group)
        end

        if circuit_group then
            update_group("programmable-structures", circuit_group)

        end
end

if mods["aai-programmable-structures"] then
    if circuit_group then
        update_group("programmable-structures", circuit_group)
    end
end

if mods["space-exploration"] then
    if transport_group then
        update_group("rail", transport_group)
    end
end

