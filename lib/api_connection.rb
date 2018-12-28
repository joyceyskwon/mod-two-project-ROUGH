def get_restaurants_from_api
  api_data = RestClient.get('')
  JSON.parse(api_data)
end
