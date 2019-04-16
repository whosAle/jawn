# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
User.create(name: "PA Rivers")
User.create(name: "Paris")
User.create(name: "Romeo")
User.create(name: "Juliet")

#neighborhoods
Neighborhood.create(name: "DUMBO", description: "Down Under Manhattan Bridge Overpass")
Neighborhood.create(name: "SoHo", description: "South of Houston")
Neighborhood.create(name: "Washington Heights", description: "Adjacent to George Washington Bridge")
Neighborhood.create(name: "Times Square", description: "We're pretty sure you know")
Neighborhood.create(name: "West Village", description: "Better than East Village")

#activities
Activity.create(name: "Bryant Park", category: "park", setting: "outdoor", neighborhood_id: 4, url_link: "https://bryantpark.org/")
Activity.create(name: "Burger Heights", category: "restaurant", setting: "indoor", neighborhood_id: 3, url_link: "https://www.burgerheights.com/")
Activity.create(name: "Manhattan Portage", category: "retail", setting: "indoor", neighborhood_id: 2, url_link: "https://www.manhattanportage.com/")
Activity.create(name: "Manhattan Bridge", category: "monument", setting: "outdoor", neighborhood_id: 1, url_link: "http://home.nyc.gov/html/dot/html/infrastructure/manhattan-bridge.shtml")

#reviews
Review.create(description: "It's good, Its like a five guys, but more like a neighborhood jawn", rating: 4, user_id: 2, activity_id: 2)
Review.create(description: "A beautiful park next to the New York Library, also features a skating rink in the winter", rating: 5, user_id: 4, activity_id: 1)
Review.create(description: "One of the most iconic places to take a picture in NYC, The cobble stone roads have a fantastic contrast to the towering bridge above", rating: 4, user_id: 3, activity_id: 4)
Review.create(description: "A great place to buy a bag that will last a long time", rating: 4, user_id: 1, activity_id: 3)

#time of day
TimeOfDay.create(activity_id: 2, morning: false, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 1, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 4, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 3, morning: true, afternoon: true, evening: true, late_night: false)
