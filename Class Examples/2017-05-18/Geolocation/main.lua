https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&type=gym&keyword=climb&key=AIzaSyDGL9WfslaxKb43C2YxWEpwCnZzZNrZ8-c
https://maps.googleapis.com/maps/api/place/details/json?placeid=2a35ed5051c6cfbb3c97adce679b87fb5a5ffabb&key=AIzaSyDGL9WfslaxKb43C2YxWEpwCnZzZNrZ8-c

function handleResponse(event)
  print(event.response)
end


params = {
  body = 
};
network.request("https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyDGL9WfslaxKb43C2YxWEpwCnZzZNrZ8-c", "GET", handleResponse, )