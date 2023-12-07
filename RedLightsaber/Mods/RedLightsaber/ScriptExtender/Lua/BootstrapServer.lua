-- Currently assume a single lightsaber can be equipped, but in either hand.
-- (Doesn't handle dual-wielding yet)
local prev_sheathed = -1;
local tickHandler = -1;

local function extendLightsaberBlade(weapon, character)
    _P("Lightsaber is not sheathed");
    ApplyStatus(weapon, "TLN_LIGHTSABER_LIGHT", -1, 1);
    ApplyStatus(character, "SNEAKING_CLEAR", -1, 1);
end

local function retractLightsaberBlade(weapon, character)
    _P("Lightsaber is sheathed");
    ApplyStatus(weapon, "TLN_LIGHTSABER_LIGHT_REMOVER", -1, 1);
    RemoveStatus(character, "SNEAKING_CLEAR", character);
end

local function isWeaponLightsaber(weapon)
    return weapon and (string.find(GetTemplate(weapon), "TLN_Lightsaber") ~= nil)
end

local function unsubIfSubbed()
    if(tickHandler > 0) then
        Ext.Events.Tick:Unsubscribe(tickHandler);
        tickHandler = -1;
    end
end

local function isLightsaberSheathed(character)
    -- Get the new sheathed state
    local new_sheathed = IsWeaponUnsheathed(character);

    -- Return the sheathed state if the sheathed state hasn't changed
    if(prev_sheathed == new_sheathed) then return nil end;

    -- If they have changed, align them
    prev_sheathed = new_sheathed;

    -- Return true if new_sheathed is 0 (otherwise return false)
    return new_sheathed == 0;
end

local function getLightsaberOfInterest(mainHandWeapon, offHandWeapon)
    if(isWeaponLightsaber(mainHandWeapon)) then
        return mainHandWeapon
    elseif(offHandWeapon and isWeaponLightsaber(offHandWeapon)) then
        return offHandWeapon
    else
        unsubIfSubbed();
        return
    end
end

local function wielding()
    -- In this function, which runs on every tick, we proactively return as soon as possible to maximise performance
    local character = GetHostCharacter();
    if(not character) then return end

    local lightsaberIsSheathed = isLightsaberSheathed(character);
    if(lightsaberIsSheathed == nil) then return end

    local mainHandWeapon = GetEquippedItem(character, "Melee Main Weapon");
    local offHandWeapon = GetEquippedItem(character, "Melee Offhand Weapon");
    if(not (mainHandWeapon or offHandWeapon)) then return end

    -- Set the weapon we're interested in
    local weapon = getLightsaberOfInterest(mainHandWeapon, offHandWeapon)
    if(not weapon) then return end

    if(lightsaberIsSheathed == true) then
        retractLightsaberBlade(weapon, character)
    elseif(lightsaberIsSheathed == false) then
        extendLightsaberBlade(weapon, character)
    end
end

local function subIfNotSubbed()
    -- Return if we are already subscribed to Tick
    if(tickHandler > 0) then return end

    -- Otherwise, subscribe to Tick
    tickHandler = Ext.Events.Tick:Subscribe(wielding);
end

local function isLightsaberEquipped(character)
    -- Get both weapons
    local mainHandWeapon = GetEquippedItem(character, "Melee Main Weapon");
    local offHandWeapon = GetEquippedItem(character, "Melee Offhand Weapon");

    -- Select the weapon we are interested in
    local lightsaber = getLightsaberOfInterest(mainHandWeapon, offHandWeapon);

    -- If the weapon is a lightsaber...
    if(lightsaber) then
        subIfNotSubbed();
    else
        prev_sheathed = -1;
        unsubIfSubbed();
    end
end

Ext.Osiris.RegisterListener("SavegameLoaded", 0, "after", function() isLightsaberEquipped(GetHostCharacter()) end);

Ext.Osiris.RegisterListener("Equipped", 2, "after", function(item, character) isLightsaberEquipped(character) end);