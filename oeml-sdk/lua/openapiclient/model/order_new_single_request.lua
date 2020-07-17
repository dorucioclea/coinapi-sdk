--[[
  OEML - REST API
 
  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 
  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- order_new_single_request class
local order_new_single_request = {}
local order_new_single_request_mt = {
	__name = "order_new_single_request";
	__index = order_new_single_request;
}

local function cast_order_new_single_request(t)
	return setmetatable(t, order_new_single_request_mt)
end

local function new_order_new_single_request(exchange_id, client_order_id, symbol_id_exchange, symbol_id_coinapi, amount_order, price, side, order_type, time_in_force, expire_time, exec_inst)
	return cast_order_new_single_request({
		["exchange_id"] = exchange_id;
		["client_order_id"] = client_order_id;
		["symbol_id_exchange"] = symbol_id_exchange;
		["symbol_id_coinapi"] = symbol_id_coinapi;
		["amount_order"] = amount_order;
		["price"] = price;
		["side"] = side;
		["order_type"] = order_type;
		["time_in_force"] = time_in_force;
		["expire_time"] = expire_time;
		["exec_inst"] = exec_inst;
	})
end

return {
	cast = cast_order_new_single_request;
	new = new_order_new_single_request;
}
