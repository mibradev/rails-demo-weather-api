location = Location.create!(name: "New York City")

location.recordings.create!(temperature: 32, status: "cloudy")
location.recordings.create!(temperature: 34, status: "rainy")
location.recordings.create!(temperature: 30, status: "rainy")
location.recordings.create!(temperature: 28, status: "cloudy")
location.recordings.create!(temperature: 22, status: "sunny")
