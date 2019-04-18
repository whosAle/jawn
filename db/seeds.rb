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
Neighborhood.create(name: "FiDi", description: "Has a street with a wall on it")
Neighborhood.create(name: "TriBeCa", description: "Triangle Below Canal street")



#activities
Activity.create(name: "Bryant Park", category: "park", setting: "outdoor", neighborhood_id: 4, url_link: "https://bryantpark.org/")
Activity.create(name: "Burger Heights", category: "restaurant", setting: "indoor", neighborhood_id: 3, url_link: "https://www.burgerheights.com/")
Activity.create(name: "Manhattan Portage", category: "retail", setting: "indoor", neighborhood_id: 2, url_link: "https://www.manhattanportage.com/")
Activity.create(name: "Manhattan Bridge", category: "monument", setting: "outdoor", neighborhood_id: 1, url_link: "http://home.nyc.gov/html/dot/html/infrastructure/manhattan-bridge.shtml")
Activity.create(name: "The Loyal", category: "restaurant", setting: "indoor", neighborhood_id: 5, url_link: "http://www.loyalrestaurant.com/")
Activity.create(name: "New York City Library", category: "monument", setting: "indoor", neighborhood_id: 4, url_link: "https://www.nypl.org/")
Activity.create(name: "The Little Red Lighthouse", category: "monument", setting: "outdoor", neighborhood_id: 3, url_link: "https://www.nycgovparks.org/parks/fort-washington-park/highlights/11044")
Activity.create(name: "Supreme", category: "retail", setting: "indoor", neighborhood_id: 2, url_link: "https://www.supremenewyork.com/")
Activity.create(name: "Brooklyn Bridge", category: "monument", setting: "outdoor", neighborhood_id: 1, url_link: "https://en.wikipedia.org/wiki/Brooklyn_Bridge")
Activity.create(name: "The Comedy Cellar", category: "nightclub", setting: "indoor", neighborhood_id: 5, url_link: "https://www.comedycellar.com/")
Activity.create(name: "Charging Bull", category: "monument", setting: "outdoor", neighborhood_id: 6, url_link: "https://en.wikipedia.org/wiki/Charging_Bull")
Activity.create(name: "National Museum of the American Indian", category: "monument", setting: "indoor", neighborhood_id: 6, url_link: "https://americanindian.si.edu/")
Activity.create(name: "Hook and Ladder 8", category: "monument", setting: "outdoor", neighborhood_id: 7, url_link: "https://en.wikipedia.org/wiki/Firehouse,_Hook_%26_Ladder_Company_8")
Activity.create(name: "The Odeon", category: "restuarant", setting: "indoor", neighborhood_id: 7, url_link: "https://www.theodeonrestaurant.com/")

#reviews
Review.create(description: "It's good, Its like a five guys, but more like a neighborhood jawn", rating: 4, user_id: 2, activity_id: 2)
Review.create(description: "A beautiful park next to the New York Library, also features a skating rink in the winter", rating: 5, user_id: 4, activity_id: 1)
Review.create(description: "One of the most iconic places to take a picture in NYC, The cobble stone roads have a fantastic contrast to the towering bridge above", rating: 4, user_id: 3, activity_id: 4)
Review.create(description: "A great place to buy a bag that will last a long time", rating: 4, user_id: 1, activity_id: 3)
Review.create(description: "A great place to eat", rating: 4, user_id: 1, activity_id: 5)
Review.create(description: "It has a great view of whole foods across the street", rating: 4, user_id: 1, activity_id: 1)
Review.create(description: "Awesome french restaurant that I love bringing friends to from outside the city", rating: 4, user_id: 2, activity_id: 14)
Review.create(description: "Great place to read a book", rating: 3, user_id: 1, activity_id: 6)
Review.create(description: "I wanted to get a shirt but there was a line", rating: 1, user_id: 2, activity_id: 8)
Review.create(description: "It was cold, raining, and a long wait in line", rating: 2, user_id: 4, activity_id: 11)
Review.create(description: "Great place to have a laugh", rating: 5, user_id: 4, activity_id: 10)
Review.create(description: "I love going to the bridge in the spring time. the summer is not so good", rating: 5, user_id: 4, activity_id: 9)
Review.create(description: "Wow this bull was so cool", rating: 5, user_id: 3, activity_id: 11)
Review.create(description: "Great dessert", rating: 4, user_id: 2, activity_id: 14)
Review.create(description: "The home of Ghostbusters did not disappoint", rating: 5, user_id: 2, activity_id: 13)
Review.create(description: "Very important for everyone to see", rating: 4, user_id: 2, activity_id: 12)
Review.create(description: "the ice cream sundae is amazing!", rating: 4, user_id: 2, activity_id: 5)
Review.create(description: "the lighthouse was so red!", rating: 5, user_id: 3, activity_id: 7)
Review.create(description: "came at 5am to get in line and ended up first!", rating: 4, user_id: 2, activity_id: 8)
Review.create(description: "I've seen funnier", rating: 2, user_id: 3, activity_id: 10)


#time of day
TimeOfDay.create(activity_id: 2, morning: false, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 1, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 4, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 3, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 5, morning: true, afternoon: true, evening: true, late_night: true)
TimeOfDay.create(activity_id: 14, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 12, morning: true, afternoon: true, evening: false, late_night: false)
TimeOfDay.create(activity_id: 10, morning: false, afternoon: false, evening: true, late_night: true)
TimeOfDay.create(activity_id: 8, morning: true, afternoon: true, evening: false, late_night: false)
TimeOfDay.create(activity_id: 6, morning: true, afternoon: true, evening: true, late_night: true)
TimeOfDay.create(activity_id: 13, morning: false, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 11, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 9, morning: true, afternoon: true, evening: true, late_night: false)
TimeOfDay.create(activity_id: 7, morning: true, afternoon: true, evening: true, late_night: false)


#pictures
Picture.create(img_url: "https://pmcwwd.files.wordpress.com/2017/10/the-loyal-restaurant-03.jpg", caption: "A table", review_id: 5)
Picture.create(img_url: "https://bryantpark-prod.imgix.net/images/bryantpark_uploads/images/2018-12-19-ColinMiller-BryantPark-0005-3771-v2.jpg", caption: "Bryant Park at winter", review_id: 2)
Picture.create(img_url: "https://digitalmarketing.blob.core.windows.net/11400/images/items/image549979.jpg", caption: "too much lettuce", review_id: 1)
Picture.create(img_url: "http://cdn.brownstoner.com/wp-content/uploads/2016/02/manhattan-bridge-02.jpg", caption: "I think this is the right bridge", review_id: 3)
Picture.create(img_url: "https://s3-media2.fl.yelpcdn.com/bphoto/p4hdeQnj6UaXzIXENIa5aw/348s.jpg", caption: "wall o bags", review_id: 4)
Picture.create(img_url: "https://bryantpark-prod.imgix.net/images/bryantpark_uploads/images/2017-09-25-ColinMiller-Bryant-0002-6927.jpg", caption: "not whole foods", review_id: 6)
Picture.create(img_url: "https://pmcwwd.files.wordpress.com/2017/10/the-loyal-restaurant-03.jpg", caption: "A table", review_id: 5)
Picture.create(img_url: "https://www.nypl.org/sites/default/files/images/locations/394/research_interior_2014_09_18_sasb_reading_room%20%282%29.jpg", caption: "The Rose Main Reading Room", review_id: 8)
Picture.create(img_url: "https://forgotten-ny.com/wp-content/uploads/2011/10/dumbobrklynbridge.jpg", caption: "the brooklyn bridge from dumbo", review_id: 12)
Picture.create(img_url: "https://media.timeout.com/images/103141307/630/472/image.jpg", caption: "the entrance", review_id: 11)
Picture.create(img_url: "http://www.chargingbull.com/wp-content/uploads/2019/03/cb-above-opt.jpg", caption: "the best way to see the bull", review_id: 10)
Picture.create(img_url: "https://www.drapersonline.com/pictures/1240x826/7/2/0/3070720_supreme.jpg", caption: "the line", review_id: 9)
Picture.create(img_url: "https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2017/03/13/104339264-rRTS11U5Nrr.530x298.jpg", caption: "the bull", review_id: 13)
Picture.create(img_url: "https://thumbs-prod.si-cdn.com/fw7qdQGx1CbgU3eeWAh9w7Wgr1A=/fit-in/600x0/https://public-media.si-cdn.com/museums/2016_exterior.jpg", caption: "an angled shot of the museum I took", review_id: 16)
Picture.create(img_url: "https://d37219swed47g7.cloudfront.net/media/CACHE/images/reviews/the-odeon/banners/The-Odeon_2/716e8077f754f8199231a9fd78bf4e08.jpg", caption: "The Odeon at night", review_id: 7)
Picture.create(img_url: "https://cdn1.gbot.me/photos/cL/be/1408412795/-Postcard_of_The_Odeon-20000000008285648-375x500.jpg", caption: "the dessert", review_id: 14)
Picture.create(img_url: "https://media2.trover.com/T/526ca54a26c48d1c6a000a89/fixedw_large_4x.jpg", caption: "Get the ghost", review_id: 15)
Picture.create(img_url: "https://cdn.theculturetrip.com/wp-content/uploads/2017/10/sundae-set_dillon-burke-3-1024x683.jpg", caption: "the ice cream sundae", review_id: 17)
Picture.create(img_url: "https://fastly.4sqi.net/img/general/200x200/583546_4ABR8oKR4tL8iNDlgj-3E4wiscXq6mXMbzkbe5-NnXo.jpg", caption: "the outside", review_id: 7)
Picture.create(img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/GWB_and_Little_Red_Lighthouse_Xmas110013.jpg/375px-GWB_and_Little_Red_Lighthouse_Xmas110013.jpg", caption: "how wonderful", review_id: 18)
Picture.create(img_url: "https://www.nycgo.com/images/460x285/SupremeV1_460x285.jpg", caption: "dope shot at night", review_id: 19)
Picture.create(img_url: "https://loving-newyork.com/wp-content/uploads/2018/09/Things-to-do-in-greenwich-village-171208101859004-1600x960.jpg", caption: "the entrance", review_id: 20)


#friendships
Friendship.create(user_id: 3, followee_id: 4)
