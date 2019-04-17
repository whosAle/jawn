# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
User.create(name: "PA Rivers", password: "paul")
User.create(name: "Paris", password: "french")
User.create(name: "Romeo", password: "italia")
User.create(name: "Juliet", password: "cap")

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
Activity.create(name: "The Loyal", category: "restaurant", setting: "indoor", neighborhood_id: 5, url_link: "http://www.loyalrestaurant.com/")

#reviews
Review.create(description: "It's good, Its like a five guys, but more like a neighborhood jawn", rating: 4, user_id: 2, activity_id: 2)
Review.create(description: "A beautiful park next to the New York Library, also features a skating rink in the winter", rating: 5, user_id: 4, activity_id: 1)
Review.create(description: "One of the most iconic places to take a picture in NYC, The cobble stone roads have a fantastic contrast to the towering bridge above", rating: 4, user_id: 3, activity_id: 4)
Review.create(description: "A great place to buy a bag that will last a long time", rating: 4, user_id: 1, activity_id: 3)
Review.create(description: "A great place to eat", rating: 4, user_id: 1, activity_id: 5)
Review.create(description: "It has a great view of whole foods across the street", rating: 4, user_id: 1, activity_id: 1)
Review.create(description: "Awesome cubed duck fat tots", rating: 4, user_id: 4, activity_id: 5)

#time of day
TimeOfDay.create(activity_id: 2, morning: false, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 1, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 4, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 3, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 5, morning: true, afternoon: true, evening: true, late_night: true)

#pictures
Picture.create(img_url: "https://pmcwwd.files.wordpress.com/2017/10/the-loyal-restaurant-03.jpg?w=640&h=415&crop=1", caption: "A table", review_id: 5)
Picture.create(img_url: "https://bryantpark-prod.imgix.net/images/bryantpark_uploads/images/2018-12-19-ColinMiller-BryantPark-0005-3771-v2.jpg?fit=min&w=1280&h=720", caption: "Bryant Park at winter", review_id: 2)
Picture.create(img_url: "https://digitalmarketing.blob.core.windows.net/11400/images/items/image549979.jpg", caption: "too much lettuce", review_id: 1)
Picture.create(img_url: "http://cdn.brownstoner.com/wp-content/uploads/2016/02/manhattan-bridge-02.jpg", caption: "I think this is the right bridge", review_id: 3)
Picture.create(img_url: "https://s3-media2.fl.yelpcdn.com/bphoto/p4hdeQnj6UaXzIXENIa5aw/348s.jpg", caption: "wall o bags", review_id: 4)
Picture.create(img_url: "https://bryantpark-prod.imgix.net/images/bryantpark_uploads/images/2017-09-25-ColinMiller-Bryant-0002-6927.jpg", caption: "not whole foods", review_id: 6)

#friendships
Friendship.create(user_id: 3, followee_id: 4)
