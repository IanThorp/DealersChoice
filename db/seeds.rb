

tags = [
  { name: "Spirituous", description: "Robust and spirit forward."},
  { name: "Straight Forward", description: "Lets the spirit take front and center."},
  { name: "Smokey", description: "Smokey and peatie aroma"},
  { name: "Smooth", description: "Balanced flavors without any standing out too much."},
  { name: "Light", description: "Spirits with a lighter body (Gin, Vodka, Light Rum, etc)"},
  { name: "Dark", description: "Spirits with a darker body (Whisk(e)y, Dark Rum, etc )"},
  { name: "Complex", description: "Flavors that are not appetizing for all(bitter, smokey, vegetal)"},
  { name: "Vegetal", description: "Flavors originiating from a variety of herbs and vegetables"},
  { name: "Bitter", description: "Deep and almost medicinal bitter flavor."},
  { name: "Smokey", description: "Smokey and peatie aroma"},
  { name: "Smooth", description: "Balanced flavors without any standing out too much."},
  { name: "Dark", description: "Spirits with a darker body (Whisk(e)y, Dark Rum, etc )"},
  { name: "Light", description: "Spirits with a lighter body (Gin, Vodka, Light Rum, etc)"},
  { name: "Complex", description: "Flavors that are not appetizing for all(bitter, smokey, vegetal)"},
  { name: "Straight Forward", description: "Lets the spirit take front and center."},
  { name: "Vegetal", description: "Flavors originiating from a variety of herbs and vegetables"},
  { name: "Bitter", description: "Deep and almost medicinal bitter flavor."},
  { name: "Light", description: "Spirits with a lighter body (Gin, Vodka, Light Rum, etc)"},
  { name: "Dark", description: "Spirits with a darker body (Whisk(e)y, Dark Rum, etc )"},
  { name: "Light", description: "Spirits with a lighter body (Gin, Vodka, Light Rum, etc)"},
  { name: "Dark", description: "Spirits with a darker body (Whisk(e)y, Dark Rum, etc )"},
  { name: "Fruity", description: "Flavors originating from all fruit."},
  { name: "Crisp", description: "Refreshing and bright"},
  { name: "Decadent", description: "Desserty, creamy, and sweet"},
  { name: "Crisp", description: "Refreshing and bright"},
  { name: "Citrus", description: "Bright crisp flavors from lemon, lime, orange, or grapefruit."},
  { name: "Clove", description: "Holiday spices of Allspice and Clove"},
  { name: "Tropical", description: "Flavors like pineapple, mango, and coconut."},
  { name: "Berry", description: "Flavors like strawberry, blueberry, and raspberry"},
  { name: "Bubbly", description: "Effervescent and carbonated."},
  { name: "Still", description: "Smooth and uncarbonated."},
  { name: "Fruity", description: "Flavors originating from all fruit."},
  { name: "Herbal", description: "Flavors could include rosemary, basil, and cilantro."},
  { name: "Stonefruit", description: "Could include peaches, plums, and apricots."},
  { name: "Berry", description: "Flavors like strawberry, blueberry, and raspberry"},
  { name: "Gentle",  description: "Easy going and not too aggressive."}]

tags.each do |tag|
  Tag.create(name: tag[:name], description: tag[:description])
end

# Spiritous
Tag.find(1).children << Tag.find(2)
Tag.find(1).children << Tag.find(7)
# Straight_forward_1
Tag.find(2).children << Tag.find(3)
Tag.find(2).children << Tag.find(4)
# Smooth_1
Tag.find(4).children << Tag.find(5)
Tag.find(4).children << Tag.find(6)
# Complex_1
Tag.find(7).children << Tag.find(8)
Tag.find(7).children << Tag.find(9)
# Vegetal
Tag.find(8).children << Tag.find(12)
Tag.find(8).children << Tag.find(13)
# Bitter
Tag.find(9).children << Tag.find(10)
Tag.find(9).children << Tag.find(11)
# Complex_2
Tag.find(14).children << Tag.find(16)
Tag.find(14).children << Tag.find(17)
# Vegetal_2
Tag.find(16).children << Tag.find(18)
Tag.find(16).children << Tag.find(19)
# Bitter_2
Tag.find(17).children << Tag.find(26)
Tag.find(17).children << Tag.find(27)
# Straight_forward_2
Tag.find(15).children << Tag.find(20)
Tag.find(15).children << Tag.find(21)
# Light_4
Tag.find(20).children << Tag.find(22)
Tag.find(20).children << Tag.find(23)
# Fruity_1
Tag.find(22).children << Tag.find(28)
Tag.find(22).children << Tag.find(29)
# Crisp_1
Tag.find(23).children << Tag.find(30)
Tag.find(23).children << Tag.find(31)
# Dark_4
Tag.find(21).children << Tag.find(24)
Tag.find(21).children << Tag.find(25)
# Crisp_2
Tag.find(25).children << Tag.find(32)
Tag.find(25).children << Tag.find(33)
# Fruity_2
Tag.find(32).children << Tag.find(34)
Tag.find(32).children << Tag.find(35)
# Gentle
Tag.find(36).children << Tag.find(14)
Tag.find(36).children << Tag.find(15)


100.times do
  user = User.new
  user.email = Faker::Internet.email
  user.password = '123456'
  user.password_confirmation = '123456'
  user.save!
end


cocktails = {
    Bitter_Giuseppe: { tags: [ 6, 9, 11, 1, 7], description: "With a big pour of Cynar and a touch of sweet vermouth, this shim (low alchohol cocktail) packs big, bold, bitter flavor with a dark caramel hint.", name: "Bitter Giuseppe", image_url: "http://images1.laweekly.com/imager/bitter-giuseppe/u/original/4254998/bitter_giuseppe_corner_door.jpg"} ,

    :"1794" => { tags: [ 12, 9, 1, 7], description: "Rye Whiskey focused, with a bitter dark chocolate kick.", name: "1794", image_url: "https://dmford.files.wordpress.com/2014/12/wpid16667-lucien-gaudin-20141203-0986.jpg?w=1216"} ,

    Corpse_Reviver_2: { tags: [36, 20, 23, 15, 31 ] , description: "Refreshing with a good kick of citrus. This drink will help wake you up with a powerful absinthe aroma.", name: "Corpse Reviver #2", image_url: "http://www.eatburprepeat.com/wp-content/uploads/2014/10/corpse_reviver_2_1013_0013.jpg"},

    Old_Fashioned: { tags: [ 4, 12 , 1, 2] , description: "The original, the famous, the great, the Old Fashioned. This drink will give you a good kick of whiskey, with just a hint of sweetnes and a nose of citrus", name: "Old Fashioned", image_url: "http://www.seriouseats.com/recipes/assets_c/2014/01/20131212rumoldfashioned-thumb-625xauto-375855.jpg"},

    Sazerac: { tags: [ 4, 12 ,1 , 2], description: "In the same family as the Old Fashioned. This keeps the powerful whiskey kick, and adds a touch of anise and citrus nose.", name: "Sazerac", image_url: "http://cdn.skim.gs/images/op5cuu7g9kpscj62ehjf/mad-men-20-classic-cocktails-that-will-never-go-out-of-style-sazerac"} ,

    Clover_Club: { tags: [29 ,20 ,22, 36, 15], description: "Nice balance of citrusy and sweet. The egg white gives it a silky texture. Ingredients: Raspberry, Sugar, Gin, Lemon, Egg white", name: "Clover Club", image_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2014/10/Nolet-Cover-Club.jpg"} ,

    Williams: { tags: [3 ,2 ,1 ,12 ], description: "A touch of smoke with a good kick of whiskey. What else could you ask for. Ingredients: Scotch, Yellow Chartreuse, Dry Vermouth, Orange Bitters", name: "Williams", image_url: "http://giuseppegallo.co.uk/wp-content/uploads/2011/02/medium_Cure-Cocktail12.jpg"} ,

    Derby: { tags: [ 21, 36, 23, 15], description: "Dark yet refreshing. Balanced and smooth. Ingredients: Sweet Vermouth, Bourbon, Lime Juice, Orange Curacao", name: "Derby", image_url: "http://punchdrink.com/wp-content/uploads/2015/03/brown-derby.jpg"} ,

    Monte_Cassino: { tags: [ 7, 3, 36, 14], description: "A touch of herbal complexity, with a nice refreshing body. Ingredients: Yellow Chartruese, Benedictine, Lemon Juice, Rye Whiskey", name: "Monte Cassino", image_url: "http://liquor.s3.amazonaws.com/wp-content/uploads/2011/03/cinquecento1.jpg"} ,

    Monte_Carlo: { tags: [ 4, 12, 1, 2], description: "Dark and Robust. Lives in the Manhattan family, but a touch more of a citrus kick. Ingredients: Bourbon, Benedictine, Angostura Bitters", name: "Monte Carlo", image_url: "http://i1074.photobucket.com/albums/w411/frederix3/montecarlo283.jpg"} ,

    Last_Word: { tags: [36 , 14, 15, 18], description: "Complex, Citrusy, and a touch of sweetness. Ingredients: Gin, Green Chartreuse, Lime Juice, Luxardo", name: "Last Word", image_url: "http://punchdrink.com/wp-content/uploads/2013/09/Last-Word.jpg"} ,

    Martini: { tags: [ 1, 5, 4, 2], description: "Simple and classic. Option to make it dirty. Ingredients: Gin, Dry Vermouth", name: "Martini", image_url: "https://drinkstraightup.files.wordpress.com/2014/03/shamrock-cocktail-3.jpg"} ,

    Zim_Zala_Bim: { tags: [ 1, 7, 8], description: "A big punch of Reposoda tequila backed up with a heavy pour of orange bitters. Ingredients: Reposado Tequila, Regan's Orange Bitters, Yellow Chartreuse, Sugar", name: "Zim Zala Bim", image_url: "https://i2.wp.com/farm3.static.flickr.com/2411/2230667706_ecaf71667c.jpg"} ,

    Purgatory: { tags: [ 1, 7, 8, 12], description: "Herbal and complex with a huge Rye Whiskey kick. Ingredients: Rye Whiskey, Green Chartreuse, Benedictine", name: "Purgatory", image_url: "http://images1.villagevoice.com/imager/u/blog/8067376/archer-cocktail-adam-robb.jpg"} ,

    Basil_Gimlet: { tags: [ 20, 23, 36, 15], description: "Herbal and refreshing. This is a crowd favorite. Ingredients: Gin, Basil, Lime Juice, Sugar", name: "Basil Gimlet", image_url: "http://saltandwind.com/media/_versions/recipes/150210-cucumber-basil-gimlet_large.jpg"} ,

    Orange_Whip: { tags: [36 , 15, 22 ,28, 20] , description: "Tastes just like an orange creamsicle. Ingredients: Gin, Egg Whites, Orange Curacao, Orange Juice, Sugar", name: "Orange Whip", image_url: "https://s-media-cache-ak0.pinimg.com/736x/00/32/05/0032059b5e187bc63204d4d7069012d4.jpg"},

    Trinidad_Sour: { tags: [36 ,14, 17, 27], description: "Dark clove and all spice backed up with a bit of citrus and sweet. Nice and balanced. Ingredients: Rye Whiskey, Angostura Bitters, Lemon Juice, Orgeat", name: "Trinidad Sour", image_url: "http://www.squirrelfarts.com/sfblog/wp-content/uploads/2012/07/rule37trinidadsour.jpg"} ,

    Negroni: { tags: [ 7, 1, 9, 11], description: "Classic combination that creates a bitter and aggressive drink. Ingredients: Gin, Campari, Sweet Vermouth", name: "Negroni", image_url: "http://graphics8.nytimes.com/images/2013/12/30/t-magazine/30spagliato-rowan1/30spagliato-rowan1-tmagArticle.jpg"} ,

    Americano: { tags: [36 ,2 , 17], description: "Refreshing but full flavored and bitter. Ingredients: Campari, Sweet Vermouth, Soda Water", name: "Americano", image_url: "http://cf.ltkcdn.net/cocktails/images/std/178410-230x307-Americano-drink-IS.jpg"} ,

    Ephemeral: { tags: [ 7, 1, 8], description: "Celery and gin? You would not believe how good this is. Ingredients: Gin, Dolin Blanc, St Germain, Celery Bitters", name: "Ephemeral", image_url: "http://3.bp.blogspot.com/-pILVIwU8Hfs/VbTk1vaqGYI/AAAAAAAAOMg/JBBzN8akTvQ/s1600/Ephemeral%2Bcocktail.jpg"} ,

    Martinez: { tags: [ 6, 1, 2], description: "Has a darkness you don't normally find in gin. This all comes together to make an unforgettable cocktail. Ingredients: Old Tom Gin, Sweet Vermouth, Luxardo, Angostura Bitters, Regan's Orange Bitters", name: "Martinez", image_url: "http://punchdrink.com/wp-content/uploads/2013/12/Martinez.jpg"} ,

    Cucumber_Cooler: { tags: [15, 20, 23, 30, 36], description: "Refreshing with a cucumber kick and bubbly texture. Ingredients: Gin, Aperol, Lime Juice, Sugar, Soda Water", name: "Cucumber Cooler", image_url: "http://images.tastespotting.com/uploads/thumbnail/496534.jpg"} ,

    Gin_Gin_Mule: { tags: [ 20, 36, 23, 15, 30], description: "Think a Moscow Mule, but more balanced and delicious mint. I know what you are thinking... It was 'mint' to be. Ingredients: Gin, Lime Juice, Sugar, Ginger Beer", name: "Gin Gin Mule", image_url: "http://summitsips.com/wp-content/uploads/2011/05/IMG_1901.jpg"} ,

    Favela: { tags: [ 36, 2, 17], description: "Refreshing, sour, and bitter. This is a complex and interesting drink, packaged in a refreshing style. Ingredients: Gin, Cocchi Americano, Campari, Falernum, Lemon Juice, Grapefruit Bitters", name: "Favela", image_url: "https://putneyfarm.files.wordpress.com/2013/03/plane6.jpg"} ,

    Royal_Hawaiian: { tags: [36 ,20, 22, 28, 15], description: "Light tropical and very little taste of alchohol. Ingredients: Gin, Pineapple Juice, Orgeat, Lemon Juice", name: "Royal Hawaiian", image_url: "https://s-media-cache-ak0.pinimg.com/236x/43/00/97/43009757583753eac9464f082c412c36.jpg"} ,

    Penicillin: { tags: [ 36, 14, 19], description: "Ginger Spice with a nice smokey kick. This is really interesting, but easy to drink one after another. Ingredients: Scothc, Ginger, Honey, Lemon", name: "Penicillin", image_url: "http://www.snackish.com/wp-content/uploads/2012/03/penicillin_cocktail_recipe.jpg"} ,

    Unlucky_Italian: { tags: [36, 17, 14], description: "Dark and bitter, deep with a honey sweetness. The ultimate dark refreshing fantasy. Ingredients: Cynar, Averna, Honey, Cinnamon, Lemon Juice, Egg White", name: "Unlucky Italian", image_url: "https://s-media-cache-ak0.pinimg.com/236x/ac/5e/92/ac5e92fa4e875d7c1c88563c22ba14e6.jpg"} ,

    Jack_Rose: { tags: [ 21, 36, 25, 15, 32, 35], description: "A touch of pomegranate to back up apple brandy and citrus. Ingredients: Apple Brandy, Lemon Juice, Grenadine", name: "Jack Rose", image_url: "https://daddyosmartinis.files.wordpress.com/2015/02/jack-rose-cocktail.jpg"},

    Chocolate_Flip: { tags: [36, 15, 21, 24], description: "An egg in a drink?  You would never know in this deserty and creamy cocktail. Ingredients: Dark Rum, Tia Maria, Whole Egg, Sugar", name: "Chocolate Flip", image_url: "http://punchdrink.com/wp-content/uploads/2016/03/Article-Flip-Cocktail-Ale-Sherry-Brandy-Drinks-History-Recipe-Elephant-Flip-Pouring-Ribbons-Franklin-Bar-Philadelphia-NYC.jpg"},

    Jim_Jam: { tags: [36, 15, 21, 25, 32, 34], description: "Dark and deep stonefruit with a refreshing citrus kick. This is definitely your jam.  Ingredients: Averna, Apry, Lemon Juice", name: "Jim Jam", image_url: "http://www.miami.com/sites/migration.miami.com/files/images/summerjam.jpg"}

}

cocktails.each do |key, value|
  drink = Drink.create(name: value[:name], description: value[:description], bar_id: 1, image_url: value[:image_url])
  drink.reviews.create(user_id: rand(1..100), description: "Wow, this drink was the best one I have ever had. I wish I could get another one.")
  drink.reviews.create(user_id: rand(1..100), description: "I can't believe I have never tried this drink before. I have been missing out.")
  value[:tags].each {|tag| DrinksTag.create(drink_id: drink.id, tag_id: tag)}
end

top_sf_bars = ["Barbarossa Lounge","Two Sisters Bar and Books","Hi-Lo Club","The Butterfly Lounge","Forgery","Bond","Oddjob","Bourbon + Branch","Blackbird","15 Romolo","Trick Dog","The European","Comstock Saloon","Cantina","Smuggler's Cove","The Alembic","Rickhouse","Maven","Rye","Tradition"]

top_sf_bars.each do |bar|
  Bar.create(name: bar)
end


