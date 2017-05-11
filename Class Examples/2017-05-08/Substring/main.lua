local x = "myFunction({\"Status\":\"SUCCESS\",\"Name\":\"Alphabet Inc\",\"Symbol\":\"GOOGL\",\"LastPrice\":950.28,\"Change\":-4.44000000000005,\"ChangePercent\":-0.465057817999,\"Timestamp\":\"Fri May 5 00:00:00 UTC-04:00 2017\",\"MSDate\":42860,\"MarketCap\":327638488680,\"Volume\":1615548,\"ChangeYTD\":792.45,\"ChangePercentYTD\":19.9167139882642,\"High\":958.4395,\"Low\":948.0986,\"Open\":956.72})"
local y = string.sub(x, 12, -2)
print(x)
print(y)