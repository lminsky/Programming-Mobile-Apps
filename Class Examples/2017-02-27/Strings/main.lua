local text = "ABcdEF"

print(text:len())       --Get the length of the string
print(text:lower())     --Get the lowercase version of the text
print(text:upper())     --Get the uppercase version of the text
print(text:reverse())   --Get the reversed text
find = text:find("cdE") --Get the location of the "cdE" in the text
print(find)             
print(text:sub(2))    --Get the substring starting at 2 and ending at 4
print(string.byte("z")) --Get the ASCII value of "z"
print(string.char(65))  --Get the characted with the ASCII value 65

--Loop and print every character from ASCII 65-90
for i=65,90 do
  print(string.char(i))
end











-- print(text:find("A"))
-- print(string.find("ABCDEF", "A"))
-- print(string.byte("ABCDEF", 1))
-- print(string.char(65))
-- print(string.reverse("ABCDEF"))
-- print(string.sub("ABCDEF", 1, 2 ))
