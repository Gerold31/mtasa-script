addEvent("onVehicleSpawn")


function getVehicleHandlingProperty ( element, property )
	if isElement ( element ) and getElementType ( element ) == "vehicle" and type ( property ) == "string" then -- Make sure there's a valid vehicle and a property string
		local handlingTable = getVehicleHandling ( element ) -- Get the handling as table and save as handlingTable
		local value = handlingTable[property] -- Get the value from the table

		if value then -- If there's a value (valid property)
			return value -- Return it
		end
	end

	return false -- Not an element, not a vehicle or no valid property string. Return failure
end

function spawnVehicle(id, x, y, z)
	veh = createVehicle(id,x,y,z)
	if(veh) then
		triggerEvent("onVehicleSpawn", veh)
	end
	return veh
end

