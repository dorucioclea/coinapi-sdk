--[[
  OEML - REST API
 
  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 
  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- message class
local message = {}
local message_mt = {
	__name = "message";
	__index = message;
}

local function cast_message(t)
	return setmetatable(t, message_mt)
end

local function new_message(type, severity, exchange_id, message)
	return cast_message({
		["type"] = type;
		["severity"] = severity;
		["exchange_id"] = exchange_id;
		["message"] = message;
	})
end

return {
	cast = cast_message;
	new = new_message;
}
