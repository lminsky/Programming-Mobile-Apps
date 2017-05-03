local json = require( "json" )    -- Bring in the JSON library to convert JSON to a Lua Table

function getZip(event)
    -- for k,v in pairs(event) do
    --     print(k,v)
    -- end

    if(event.status == 200) then    --if the HTTP response has a status code of 200 (OK), proceed
        print(event.response)
        -- local response = json.decode(event.response)  -- turn the JSON response into a Lua table
        -- print(response.zip_code)      -- Print out the zip code as determined by the response
    end
end

network.request( "http://freegeoip.net/json/", "GET", getZip )    -- Make an http GET request to the specified website. When there is a response, call the get zip function