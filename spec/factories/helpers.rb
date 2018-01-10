module Factory_Helpers
  @cities = [
    [42.3601, 71.0589],
    [40.7128, 74.0060],
    [41.8781, 87.6297],
    [48.8566, -2.3522],
    [52.3702, -4.8952],
    [40.4168, 3.7038]
  ]
  def self.gen_location
    city = @cities.sample
    lat = (city[0] + Random.rand(2.0) * [-1, 1].sample).round(4)
    lng = (city[0] + Random.rand(2.0) * [-1, 1].sample).round(4)
    return {lat: lat, lng: lng}
  end
end