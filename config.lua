Config = {}

-- Time-related settings
Config.CooldownDuration = 15 -- Global cooldown for scrap collection (in minutes)
Config.PlayerCooldownDuration = 0 -- No per-player cooldown
Config.SearchTime = 1000 -- Time taken to search a vehicle (milliseconds)
Config.StashSize = 20 -- Maximum parts a player can carry before needing to store/sell

-- Vehicle part hash mappings (can be expanded for different vehicle models)
Config.PropHashes = {
    1120812170, 322493792, 10106915, -915224107,
    1069797899, -273279397, -1748303324
}

-- Scrap items categorized by real-world ELV dismantling structure
Config.ScrapItems = {
    { name = 'vehicle_battery', category = 'Electrical_and_Electronics/Battery_Tray', min = 1, max = 1, rarity = 0.5 },
    { name = 'glass', category = 'Body_and_Framing/Glass', min = 1, max = 1, rarity = 0.2 },
    { name = 'vehicle_muffler', category = 'Exhaust_System', min = 1, max = 1, rarity = 0.5 },
    { name = 'vehicle_hood', category = 'Body_and_Framing/Roof_Panel', min = 1, max = 1, rarity = 0.5 },
    { name = 'vehicle_trunk', category = 'Body_and_Framing/Quarter_Panel', min = 1, max = 1, rarity = 0.5 },
    { name = 'vehicle_doors', category = 'Doors_and_Windows/Door_Assembly', min = 1, max = 2, rarity = 0.5 },
    { name = 'vehicle_engine', category = 'Engine_and_Transmission/Engine_Mounts', min = 1, max = 1, rarity = 0.5 },
    { name = 'vehicle_waterpump', category = 'Engine_and_Transmission/Throttle_Body_Assembly', min = 1, max = 1, rarity = 0.5 },
    { name = 'vehicle_oilpump', category = 'Engine_and_Transmission/Mass_Air_Flow_Sensor', min = 1, max = 1, rarity = 0.5 },
    { name = 'vehicle_speakers', category = 'Interior_Components/Speakers_and_Audio_Components', min = 1, max = 3, rarity = 0.5 },
    { name = 'vehicle_rims', category = 'Wheels_and_Tires/Wheel_Assembly', min = 1, max = 4, rarity = 0.6 },
    { name = 'vehicle_subwoofer', category = 'Interior_Components/Speakers_and_Audio_Components', min = 1, max = 1, rarity = 0.5 },
    { name = 'vehicle_steeringwheel', category = 'Interior_Components/Steering_Column', min = 1, max = 1, rarity = 0.5 },
    { name = 'vehicle_transmission', category = 'Engine_and_Transmission/Transmission_Mounts', min = 1, max = 1, rarity = 0.5 },
    { name = 'vehicle_plate', category = 'Miscellaneous/License_Plate', min = 1, max = 1, rarity = 0.02 }
}

-- Function to fetch VIN-based part data (for future integration)
Config.FetchPartData = function(vin)
    -- Placeholder function for VIN decoding and part lookup
    -- Would integrate with a real VIN API and part catalog
    print("Fetching part data for VIN:", vin)
    -- Example return format (to be replaced with actual API response)
    return {
        { name = "vehicle_engine", condition = "used", value = 1200 },
        { name = "vehicle_transmission", condition = "rebuilt", value = 900 },
        { name = "vehicle_rims", condition = "good", value = 300 },
    }
end

-- Function to calculate resale value (based on market data, eBay, etc.)
Config.CalculateResaleValue = function(part)
    -- Placeholder function to simulate market price retrieval
    local baseValue = {
        vehicle_battery = 100,
        glass = 20,
        vehicle_muffler = 75,
        vehicle_hood = 150,
        vehicle_trunk = 130,
        vehicle_doors = 200,
        vehicle_engine = 1200,
        vehicle_waterpump = 50,
        vehicle_oilpump = 80,
        vehicle_speakers = 60,
        vehicle_rims = 300,
        vehicle_subwoofer = 200,
        vehicle_steeringwheel = 90,
        vehicle_transmission = 900,
        vehicle_plate = 10
    }
    local value = baseValue[part.name] or 50 -- Default fallback value
    return value
end