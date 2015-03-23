#ZM: this file could be a lot more dry... look into loops and using faker


#user = User.create
#
#comments = []
#(0..199).each( comments << Comment.new())
#
#user.comments = comments
#user.save

exp1 = Expeditionist.create(name: 'Sir Charles Waldorf', niche: 'Master Sommlier')
exp2 = Expeditionist.create(name: 'Travis Abels', niche: 'Adrenaline Junkie')
exp3 = Expeditionist.create(name: 'Michonne Belafonte', niche: 'Culturalist')
exp4 = Expeditionist.create(name: 'Jonathan Goldsmith', niche: 'Night Life')


expere1 = Experience.create(title: "Sangiovese Wine Tasting", location:'Rome, Italy', expeditionist: exp1)
expere10= Experience.create(title: "Hang gliding Off Mount Everest", location: 'Mount Everest', expeditionist: exp2)
expere11= Experience.create(title: "Enjoying a Good Meal", location:'Rome, Italy', expeditionist: exp1)
expere2 = Experience.create(title: "Running with the Bulls", location:'Pamplona Spain', expeditionist: exp2)
expere3 = Experience.create(title: "Vacation in Bangkok", location:'Bangkok Thailand', expeditionist: Expeditionist.find_by(name:'Jonathan Goldsmith'))
expere4 = Experience.create(title: "Greatest Of the Chinese Walls", location:"China WestSide", expeditionist: Expeditionist.find_by(name: 'Michonne Belafonte'))
expere5 = Experience.create(title: "Living among the Monk", location:'Missionary-China', expeditionist: Expeditionist.find_by(name: 'Michonne Belafonte'))
expere6 = Experience.create(title: "Base Jumping", location: 'Burj Khalifa Pinnacle', expeditionist: exp2)
expere7 = Experience.create(title: "Aurora Hunting in Sweden", location: 'Swedish Lapland', expeditionist: exp4)
expere8 = Experience.create(title: "Safari in Narobi", location: 'Narobi, Africa', expeditionist: exp1)
expere9 = Experience.create(title: "Whale Fishing", location: "North Pacific", expeditionist: exp3)

# title content status experience
perspective1 = Perspective.create(title: 'The Perfect Grape', content: 'The Sangiovese grape was perfect in texture and sugar content.', status: 1, experience: expere1)
perspective11= Perspective.create(title: 'Best Meal Money Can Buy', content: 'Freshly roasted Duck from the finest reserves of Italian Country', status:1, experience: expere11)
perspective2 = Perspective.create(title: 'The pure adrenaline', content: 'As the bulls ligned up, staring me in the eye My brain flooded with the feelings of exuberance and angst.', status: 1, experience: Experience.find_by(title:"Running with the Bulls"))
perspective3 = Perspective.create(title: 'Wow, Bangkok', content: 'We ate, and we drank, We partied with monks, Gang Members, and questionable women....', status: 1, experience: Experience.find_by(title:"Vacation in Bangkok"))
perspective4 = Perspective.create(title: 'Greater then the pyramids', content: 'What a magnificent landscape. Seperating both sides seemed nothing more than will of the determined man. Which in this case is quite impressive.', status: 1, experience: Experience.find_by(title:"Greatest Of the Chineese Walls"))
perspective5 = Perspective.create(title: 'Zen People', content: 'Wishing I could attain the level of calm thse men have. They seem statue like in a complete meditative slumber.', status: 1, experience: Experience.find_by(title:"Living among the Monk"))
perspective6 = Perspective.create(title: 'Watching These Lunatics', content: 'I thought: Dear god, Please let one of these poor suckers trip. I would love to see them get what they so eagerly seek to evade', status: 0, experience: Experience.find_by(title:"Running with the Bulls"))
perspective7 = Perspective.create(title: 'The Chinese are Impressive', content: 'Wow, I cannot believe the feat of human engineering. The sheer manpower required to accomplish such a task is astonishing.', status: 0, experience: Experience.find_by(title:"Greatest Of the Chinese Walls"))
perspective8 = Perspective.create(title: "You wouldn't believe the view", content: 'The climb was worth the ride down!', status: 0, experience: expere10)
perspective9 = Perspective.create(title: 'I thought I was going to die from an adrenaline rush!', content: 'Falling past the cliff face I got a first hand view of a rock slide!', status: 0, experience: expere6)
perspective10= Perspective.create(title: "The lights at night", content: 'The Northern lights are incredibly romantic this time of year', status: 0, experience: expere7)
perspective12= Perspective.create(title: Faker::Lorem.words(num = 5).join(" ").capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 0, experience: expere8)
perspective13= Perspective.create(title: Faker::Lorem.words(num = 4).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 0, experience: expere9)
perspective15= Perspective.create(title: Faker::Lorem.words(num = 3).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere10)
perspective16= Perspective.create(title: Faker::Lorem.words(num = 7).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere11)
perspective17= Perspective.create(title: Faker::Lorem.words(num = 5).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere2)
perspective18= Perspective.create(title: Faker::Lorem.words(num = 6).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere7)
perspective19= Perspective.create(title: Faker::Lorem.words(num = 4).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere5)
perspective20= Perspective.create(title: Faker::Lorem.words(num = 3).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere11)
perspective21= Perspective.create(title: Faker::Lorem.words(num = 3).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere1)
perspective22= Perspective.create(title: Faker::Lorem.words(num = 8).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere4)
perspective23= Perspective.create(title: Faker::Lorem.words(num = 3).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere7)
perspective24= Perspective.create(title: Faker::Lorem.words(num = 5).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere6)
perspective25= Perspective.create(title: Faker::Lorem.words(num = 6).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere5)
perspective26= Perspective.create(title: Faker::Lorem.words(num = 4).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere4)
perspective27= Perspective.create(title: Faker::Lorem.words(num = 5).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere3)
perspective28= Perspective.create(title: Faker::Lorem.words(num = 9).join(' ').capitalize, content: Faker::Lorem.paragraphs(paragraph_count = 10).join(' '), status: 1, experience: expere2)


# title content perspective
comment1 = Comment.create(title: 'Laloula24', content: 'Get over yourself Buddy.', perspective: Perspective.find_by(title: 'The Chinese are Impressive'))
comment2 = Comment.create(title: 'Jackie84', content: 'Sounds Great! I would love to go there and party!', perspective: Perspective.find_by(title: 'Wow, Bangkok'))
comment3 = Comment.create(title: 'TinselTowne2', content: 'Heheh. Ohhhh Bangkok....', perspective: Perspective.find_by(title: 'Wow, Bangkok'))
comment4 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective1)
comment5 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective2)
comment6 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective3)
comment7 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective4)
comment8 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective5)
comment9 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective6)
comment10 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective7)
comment11 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective8)
comment12 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective9)
comment13 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective10)
comment15 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective11)
comment16 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective12)
comment17 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective13)
comment18 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective13)
comment19 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective15)
comment20 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective16)
comment21 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective17)
comment22 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective18)
comment23 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective19)
comment24 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective20)
comment25 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective21)
comment26 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective22)
comment27 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective23)
comment28 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective24)
comment29 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective25)
comment30 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective26)
comment31 = Comment.create(title: Faker::Name.name, content: Faker::Lorem.words(num = 13).join(' ').capitalize, perspective: perspective27)

