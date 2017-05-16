-- Data (string) to write
local saveData = "Hello!"
local table = {}
table["cheese"] = 1.5
table["chocolate"] = 2.0
print(table["cheese"])

 
-- Path for the file to write
local path = system.pathForFile( "out.txt", system.DocumentsDirectory )
 
-- Open the file handle
local file, errorString = io.open( path, "a" )
 
if not file then
    -- Error occurred; output the cause
    print( "File error: " .. errorString )
else
    -- Write data to file
    file:write( "World Hello" )
    -- Close the file handle
    io.close( file )
end
 
file = nil