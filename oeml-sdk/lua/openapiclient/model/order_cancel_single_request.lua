--[[
  OEML - REST API
 
  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 
  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- order_cancel_single_request class
local order_cancel_single_request = {}
local order_cancel_single_request_mt = {
	__name = "order_cancel_single_request";
	__index = order_cancel_single_request;
}

local function cast_order_cancel_single_request(t)
	return setmetatable(t, order_cancel_single_request_mt)
end

local function new_order_cancel_single_request(exchange_id, exchange_order_id, client_order_id)
	return cast_order_cancel_single_request({
		["exchange_id"] = exchange_id;
		["exchange_order_id"] = exchange_order_id;
		["client_order_id"] = client_order_id;
	})
end

return {
	cast = cast_order_cancel_single_request;
	new = new_order_cancel_single_request;
}
