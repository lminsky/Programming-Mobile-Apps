local json = require( "json" )

function getZip(event)
    for k,v in pairs(event) do
        print(k,v)
    end

    -- if(event.status == 200) then
    --     print(event.response)
    --     local response = json.decode(event.response)
    -- end
end

network.request( "http://freegeoip.net/json/", "GET", getZip )