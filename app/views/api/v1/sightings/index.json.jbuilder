json.array! @sightings.each do |sighting|
  json.partial! 'sightings', sighting: sighting
end
