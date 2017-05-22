function printResponse(data)
  print(data.response)
end

network.request("https://www.mountainproject.com/data?action=getUser&email=lminsky@packer.edu&key=200064735-185a12e9ff67a8031a0961b951450764", "GET", printResponse)