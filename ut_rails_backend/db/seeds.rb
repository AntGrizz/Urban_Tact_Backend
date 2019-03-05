# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
User.destroy_all
Like.destroy_all

  bill =  User.create(username: "user_bill", email: "bill@gmail.com", image: "https://www.coolfashionaccessories.net/wp-content/uploads/2017/12/60-Stylish-Men-Outfits-from-Popular-Instagrammer-Sergio-Ines-1.jpg")

  paul = User.create(username: "user_paul", email: "paul@gmail.com", image: "https://fashionidea.net/wp-content/uploads/2019/01/A-man-wearing-a-driving-moc-in-the-summer.jpg")

  mike = User.create(username: "user_mike", email: "mike@gmail.com", image: "https://fashionidea.net/wp-content/uploads/2019/01/Deveaux-Fall-Winter-Holiday-Mens-Fashion-2017-4.jpg")

  jake = User.create(username: "user_Jake", email: "jake@gmail.com", image: "https://fashionidea.net/wp-content/uploads/2019/01/images_2013_Ianuarie_Street-Fashion-Men-Berlin.jpg")

  stephon = User.create(username: "user_Stephon", email: "stephon@gmail.com", image: "https://imgix.bustle.com/uploads/image/2018/3/18/a6c27396-2976-430e-bf5c-3170d6453b9a-stefon.jpg?w=960&h=540&fit=crop&crop=faces&auto=format&q=70&dpr=2")

post_1 = Post.create(title: "OFF-WHITE's His & Her Collection",
  content: "Not known to disappoint, Virgil Abloh unleashed new FW19 looks last night across a mesmerizing checkerboard stage for his anticipated “HIS & HERS” collection. Rife with inspirational leads, Virgil’s presentation made for a convincing four-dimensional experience, likening not only the clothes to that of a pit crew’s, but outfitting the stage’s halls to mimic that of a race track.

Despite the very obvious aesthetic cues, “HIS & HERS” extended past all aforementioned inspirations, and toyed with elegant silhouettes, that brought a certain hint of couture to the race track, doing well to represent the sidelines’ crowd. And this, fused with the usual array of streetwear influences, helped set an even-more promising future for the brand. A future in which the brand’s heritage very much remains anchored in each piece, while drawing from Virgil’s innumerable sources of inspiration to further it simultaneously.

Check out our selection of backstage shots in the gallery above, and be sure to let us know in the comment section following what you are feeling." ,
  description: "The collection’s run of distorted, checkered flag-like layers added a hypnotic touch to a stripped-back selection of pit crew-inspired outerwear pieces. From tailored racing suits, to oversized, black-and-white stripe puffer jackets and rubberized kidney belt accessories, Virgil Abloh’s latest presentation was packed full of the same energy one might expect from a day at the races.", image: "https://static.highsnobiety.com/wp-content/uploads/2019/03/01113920/off-white-fw19-his-hers-pfw-show-03-800x1200.jpg",
  video: "null",
  tags: "Fashion",
  user_id: jake.id)

post_2 = Post.create(title: "D.S. & Durga’s Ultra-Luxe New Fragrance Contains Rare Ingredients From India", content: "Cult perfumer D.S. & Durga has launched a new eau de parfum fragrance called D.S., which the brands says is a “pure vision of India.”
The fragrance contains rare ingredients native to India including Kashmiri saffron, frangipani, gardenia, yellow lotus attar, and damask rose, as well as sandalwood and vetiver from Sri Lanka. A 50ml bottle costs $350.
“D.S. is the culmination of a year of work spent developing a fragrance using the Indian materials our perfumer David Seth Moltz fancies most,” reads the press release.
The fragrance is the second release in D.S. & Durga’s Gold Label line, following the launch of Durga last year. It can be purchased now over at the brand’s webstore.",
description: "Cult perfumer D.S. & Durga has launched a new eau de parfum fragrance called D.S., which the brands says is a 'pure vision of India.'",
  image: "https://static.highsnobiety.com/wp-content/uploads/2019/02/14152005/ds-durga-ds-ear-de-parfum-01.jpg", link: "https://www.highsnobiety.com/p/ds-durga-ds-eau-de-parfum/",
  video: "https://www.youtube.com/watch?v=9YyWS9jTQeE",
  tags: "Lifestyle",
  user_id: jake.id)

post_3 = Post.create(title: "The Secret to Eating for Muscle? It's Not Your Post-Workout Protein Shake.",
  content: "I don’t care about being right; I care about finding the truth. After all, that’s what it means to be a scientist. And that means I’ve been willing to change my mind about a lot of assumptions about building muscle.

One such assumption is something called protein timing. Gym-heads will know all about this one, too. You see it play out all the time in the gym: Guys carry a protein shake around for an entire workout, then down the shake as soon as the workout's done. And some guys get obsessive about this too. If they can’t get protein into their system right away, they’ll worry that all their hard work is going to waste.

That's because, for almost two decades, dedicated lifters have operated under the assumption that they need to get protein into their systems within 45 minutes of finishing a strength routine. That’s supposed to help them grow their muscles best.

According to this theory of protein timing (also known as the anabolic window of opportunity), consuming protein in and around a strength training session will help muscles recover faster, which will better boost both muscle strength and size (hypertrophy). I used to buy into this line of thinking, too.

The New Anabolic Window
Now I know that the anabolic window of opportunity is less a tiny window and more of a large barn door that's almost always swung open. Several years ago, my colleagues and I took a fresh look at the evidence behind protein timing and felt there was another side to explore. So, we carried out a meta-analysis (a review of an entire collection of randomized controlled trials related to a given topic) that challenged how the world of sports nutrition looked at post-workout protein.

Together, we analyzed 23 high-quality studies on protein timing, and at first glance, it looked as though protein timing did have a big impact on muscle size. But then we took several differences into account. We broke the studies down deeply, evaluating total protein intake, training status of the study subjects, and the length of each study.

And suddenly, the role of protein timing in muscle growth all but vanished. Truth be told (and even surprising to me), the quantity of protein that subjects consumed throughout the entire day explained the majority of variations in muscle growth far more than when they consumed it. So if you want the muscle to survive this chest burner, you need more than a post-lift shake.

Focus On Daily Protein Intake
If you’re chasing muscle gains, make that your focus. Intake at least 1.7 grams per kilogram of bodyweight daily as a priority.

Can immediate protein consumption help? Sure, but it was only a factor in studies where the non-timing group consumed less than their proper protein intake all day. And you’ll get more results from proper protein consumption throughout the day than you will from one well-timed protein shake after your workout.

Why? Because the anabolic, or muscle-building effects of a meal last for five or six hours, not a mere couple minutes after a workout. So as long as you’re replenishing protein stores regularly throughout the day in evenly-spaced protein doses — and lifting weights, of course — you should be all set for muscle gain.

And in case you’re wondering how much total protein you should be aiming for, our recent meta-analysis showed that resistance-trained individuals should get between 1.6 and 2.2 grams of protein per kilogram of body weight per day. To put that in more concrete terms, a 185-pound lifter will need roughly 135 to 185 grams of protein every day. (Divide your weight by 2.2, then multiply by 1.6 and 2.2 to get your own range.)

Those are the keys to eating protein for muscle. So now go build some muscle.
",
  description: "Stop the post-workout protein shake obsession and focus on protein all day instead.", image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gettyimages-523265143-1551714877.jpg",
  link: "https://www.menshealth.com/fitness/a26623371/post-workout-protein-overrated/",
  video: "null",
  tags: "Health & Fitness",
  user_id: paul.id)

post_4 = Post.create(title: "The Best Shampoos, Conditioners, and Stylers for Men with Long Hair",
    description: "Growing an epic mane? GQ's Best Stuff has you covered with the tips and products you need.",
    content: "Biotin is a well-known supplement for growing your hair faster and fuller. (And your nails, too!) But it's not the only one, nor the best one, that can fortify your hair. Instead, you should turn to some of the methods that dermatologists recommend for the guys with thinning hair. Products that stimulate hair growth will also strengthen the hair that you already have, and you need strong hair now more than ever. Try supplements like Nutrafol or Viviscal, and a topical Minoxidil OTC 5% solution, which stimulate blood flow to the follicles and in turn thickens and strengthens hair growth. (It can even stimulate some growth on the crown for inactive follicles.) All of those are available without a prescription, though it's still important to talk to a board-certified dermatologist about the supplement plan that's right for you. They may even recommend other hair growth products like Finasteride, which needs to be more closely monitored than other 'solutions'.",
    image: "https://media.gq.com/photos/5c78431ae718486b18bad771/16:9/w_1280%2Cc_limit/GQ-BestStuff-GroomingCreams.png",
    video: "",
    link: "https://www.gq.com/story/best-products-for-men-with-long-hair",
    tags: "Grooming",
    user_id: mike.id)

post_5 = Post.create(title: "Business cards are for dummies, you dummy",
    description: "What you need are bespoke 'calling cards'",
    content: "That's bone. And the lettering is something called Silian Grail. Every businessman – actually, hold the business – every man knows that scene from American Psycho. Set in the Wall Street boom of Eighties Manhattan, the lives of Patrick Bateman and his circle of dick-swinging money locusts, as painted so exquisitely by author Bret Easton Ellis, is one of those tales that stays with the reader long after finishing the last line. In particular, that excruciating business card scene, remembered most commonly from the film adaptation, illustrates an innate fear all successful men have: that however costly, shiny and tasteful one's status symbols, there will always be a serial killer in an expensive suit who is more pedantic than you about aesthetic refinement.
Business cards, however, are for worker bees. Everyone worth their Dyson CSYS Task Light knows this. They fall into the same category as briefcases. Yes, you like the idea of owning one. It might even make you feel more professional for a beat, but ultimately it's worthless. Other than your trips to the Far East – where card giving is purely about respect and protocol – when was the last time you gave your business card to a client you cared about? Oh, sure there was that time outside Kettner's Townhouse when Dave from marketing needed a roach for the king-size blunt he was rolling, but other than that the stack of biz cards on your desk has remained largely unfingered for years.",
image: "https://gq-images.condecdn.net/image/qXOPP5d23kY/crop/1620/landscape/f/card-02-gq-22aug18_b.jpg",
video: "",
link: "https://www.gq-magazine.co.uk/article/forget-business-cards-you-need-calling-cards", tags: "Lifestyle",
user_id: bill.id)


post_6 = Post.create(title: "6 ways to get better at everything right now",
  description: "How to improve your brain function, from the right diet to the perfect amount of sleep. And, the benefits will last a lifetime",
  content: "The brain's health affects the entirety of how we function in the present and in the future. The good news is that whether you're Einstein, A or Essex, J you can do a tremendous amount to improve its function. The better news is that those benefits will last a lifetime. So, here are six ways to improve your brain function: Feeding your brain the right diet helps you now and protects you in years to come, like a pension scheme. Your brain needs omega-3 fatty acids, antioxidants, flavanols and polyphenols and the foods that deliver these are all readily available – salmon, walnuts, blueberries, beans, turmeric, avocado, dark greens and dark chocolate. All delicious (but not together).",
  image: "https://gq-images.condecdn.net/image/7lGrpwdrV9p/crop/1620/landscape/f/brain-gq-11jul18_alexander-wells_b.jpg",
  video: "",
  link: "https://www.gq-magazine.co.uk/article/how-to-improve-your-brain-function",
  tags: "Health & Fitness",
  user_id: stephon.id)

Like.create([{user_id: bill.id, post_id: post_1.id},
  {user_id: jake.id, post_id: post_2.id},
  {user_id: paul.id, post_id: post_3.id},
  {user_id: stephon.id, post_id: post_4.id},
  {user_id: mike.id, post_id: post_5.id}])
