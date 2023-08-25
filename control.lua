function script.on_init()
    --Using the mod order each mod is partially setup:
        --When creating a new game, script.on_init() will be called on each mod that has a control.lua file.
        --When loading a save game and the mod did not exist in that save game script.on_init() is called.
        --When loading a save game and the mod existed in that save game nothing is done in this stage.

    --During the script.on_init() event handler access to the game table is available and any and all changes
    --deemed necessary by the mod are free to be performed without risk of breaking anything.

    --Note: until on_init has finished executing for a given mod (scenario scripts are also counted as a mod)
    --the game will not raise any game events for that mod.



end

function script.on_load()
    --Using the mod order each mod that had data loaded has script.on_load() called.

    --During the script.on_load() event handler access to the game table is not available. This handler is meant for only 3 things:
        --1. Re-setup meta-tables. Meta-tables are not persisted through save-load.
        --2. Re-setup conditional event handlers (subscribing to an event only when some condition is true to save processing time).
        --3. Create local references to data stored in the global table

    --Attempting to change the contents of the global table during the script.on_load() event handler is not allowed. Doing so can lead to
    --desyncs if the mod is used in multiplayer and will generate an error if the game detects it has been changed in any way.


end

function script.on_configuration_changed()
    --When mods are changed (prototypes added or removed), the major game version changes, a mod version changes,
    --a mod is removed, or a mod is added the script.on_configuration_changed() event is fired for each mod subscribed to that event.

    --This is the main place for handling mod internal data structure changes. Access to the global table,
    --game table and game state are available and can be changed in any way seen fit by the mod.

    --Note: this is not the place to handle things such as recipe unlocks due to research changes - that is best done through migration scripts.



end


