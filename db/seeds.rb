
exp1 = Expeditionist.create(name: 'Sir Charles Waldorf', niche: 'Master Sommlier')
exp2 = Expeditionist.create(name: 'Travis Abels', niche: 'Adrenaline Junkie')
exp3 = Expeditionist.create(name: 'Michonne Belafonte', niche: 'Culturalist')


expere1 = Experience.create(title:"Sangiovese Wine Tasting", location:'Rome, Italy', expeditionist: exp1)
expere11 = Experience.create(title:"Enjoying a Good Meal", location:'Rome, Italy', expeditionist: exp1)
expere2 = Experience.create(title: "Running with the Bulls", location:'Pamplona Spain', expeditionist: exp2)
expere3 = Experience.create(title: "Vacation in Bangkok", location:'Bangkok Thailand', expeditionist: Expeditionist.find_by(name:'Travis Abels'))
expere4 = Experience.create(title:"Greatest Of the Chineese Walls", location:"China WestSide", expeditionist: Expeditionist.find_by(name: 'Michonne Belafonte'))
expere5 = Experience.create(title:"Living among the Monk", location:'Missionary-China', expeditionist: Expeditionist.find_by(name: 'Michonne Belafonte'))
# title content status experience
perspective1 = Perspective.create(title: 'The Perfect Grape', content: 'The Sangiovese grape was perfect in texture and sugar content.', status: 1, experience: expere1)
perspective11 = Perspective.create(title: 'Best Mean Money Can Buy', content: 'Freshly roasted Duck from the finest reserves of Italian Country', status:1, experience: expere11)
perspective2 = Perspective.create(title: 'The pure adrenaline', content: 'As the bulls ligned up, staring me in the eye My brain flooded with the feelings of exuberance and angst.', status: 1, experience: Experience.find_by(title:"Running with the Bulls"))
perspective3 = Perspective.create(title: 'Wow, Bangkok', content: 'We ate, and we drank, We partied with monks, Gang Members, and questionable women....', status: 1, experience: Experience.find_by(title:"Vacation in Bangkok"))
perspective4 = Perspective.create(title: 'Greater then the pyramids', content: 'What a magnificent landscape. Seperating both sides seemed nothing more than will of the determined man. Which in this case is quite impressive.', status: 1, experience: Experience.find_by(title:"Greatest Of the Chineese Walls"))
perspective5 = Perspective.create(title: 'Zen People', content: 'Wishing I could attain the level of calm thse men have. They seem statue like in a complete meditative slumber.', status: 1, experience: Experience.find_by(title:"Living among the Monk"))
perspective6 = Perspective.create(title: 'Watching These Lunatics', content: 'I thought: Dear god, Please let one of these poor suckers trip. I would love to see them get what they so eagerly seek to evade', status: 0, experience: Experience.find_by(title:"Running with the Bulls"))
perspective7 = Perspective.create(title: 'The Chineese are Impressive', content: 'Wow, I cannot believe the feat of human engineering. The sheer manpower required to accomplish such a task is astonishing.', status: 0, experience: Experience.find_by(title:"Greatest Of the Chineese Walls"))
# title content perspective
comment1 = Comment.create(title: 'Laloula24', content: 'Get over yourself Buddy.', perspective: Perspective.find_by(title: 'The Chineese are Impressive'))
comment2 = Comment.create(title: 'Jackie84', content: 'Sounds Great! I would love to go there and party!', perspective: Perspective.find_by(title: 'Wow, Bangkok'))
comment3 = Comment.create(title: 'TinselTowne2', content: 'Heheh. Ohhhh Bangkok....', perspective: Perspective.find_by(title: 'Wow, Bangkok'))
