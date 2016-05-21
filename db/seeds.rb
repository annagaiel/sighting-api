50.times do
  Sighting.create(
    track_number: Faker::Number.number(4),
    total_homeless: Faker::Number.number(1),
    living_type: ["car","rv","street"][rand(0..2)],
    city: ["San Mateo", "Redwood City", "Belmont"][rand(0..2)],
    )
end