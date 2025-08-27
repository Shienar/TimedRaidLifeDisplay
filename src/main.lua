TRLD = TRLD or {}
TRLD.name = "TimedRaidLifeDisplay"

function TRLD.Initialize()

end

function TRLD.OnAddOnLoaded(event, addonName)
	if addonName == TRLD.name then
		TRLD.Initialize()
		EVENT_MANAGER:UnregisterForEvent(TRLD.name, EVENT_ADD_ON_LOADED)
	end
end

EVENT_MANAGER:RegisterForEvent(TRLD.name, EVENT_ADD_ON_LOADED, TRLD.OnAddOnLoaded)