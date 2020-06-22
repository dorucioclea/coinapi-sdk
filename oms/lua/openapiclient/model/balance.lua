--[[
  OMS - REST API ...@
 
  OMS Project
 
  The version of the OpenAPI document: v1
  
  Generated by: https://openapi-generator.tech
]]

-- balance class
local balance = {}
local balance_mt = {
	__name = "balance";
	__index = balance;
}

local function cast_balance(t)
	return setmetatable(t, balance_mt)
end

local function new_balance(type, exchange_name, data)
	return cast_balance({
		["type"] = type;
		["exchange_name"] = exchange_name;
		["data"] = data;
	})
end

return {
	cast = cast_balance;
	new = new_balance;
}
