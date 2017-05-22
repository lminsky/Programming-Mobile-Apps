https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyDGL9WfslaxKb43C2YxWEpwCnZzZNrZ8-c

function handleResponse(event)
  print(event.response)
end


params = {
  body = 
};
network.request("https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyDGL9WfslaxKb43C2YxWEpwCnZzZNrZ8-c", "GET", handleResponse, )