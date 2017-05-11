-- Data (string) to write
local saveData = "Hello!"
 
-- Path for the file to write
local path = system.pathForFile( "out.txt", system.DocumentsDirectory )
 
-- Open the file handle
local file, errorString = io.open( path, "w" )
 
if not file then
    -- Error occurred; output the cause
    print( "File error: " .. errorString )
else
    -- Write data to file
    file:write( saveData )
    -- Close the file handle
    io.close( file )
end
 
file = nil