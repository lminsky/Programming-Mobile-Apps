local s = "chocolate,1.29,darkchocolat"
local commaPosition = string.find(s, ",")
print(commaPosition)
local item = string.sub(s, 1, commaPosition-1)
local price = string.sub(s, commaPosition+1)
print(item)
print(price)
