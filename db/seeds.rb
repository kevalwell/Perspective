
exp1 = Expeditionist.create(name: 'Sir Charles Waldorf', niche: 'master sommlier', experiences: [Experience.find_by(title: "Sangiovese Wine Tasting")])
exp2 = Expeditionist.create(name: 'Travis Abels', niche: 'adrenaline junkie', experiences: [Experience.find_by(title: "Running with the Bull's"), Experience.find_by(title: "Vacation in Bangkok")])
exp3 = Expeditionist.create(name: 'Michonne Belafonte', niche: 'culturalist', experiences: [Experience.find_by(title: "Greatest Of the Chineese Walls"), Experience.find_by(title: "Living among the Monk")] )


expere1 = Experience.create(title:"Sangiovese Wine Tasting", location:'Rome, Italy', expeditionist: [Expeditionist.find_by(name:'Sir Charles Waldorf')])
expere2 = Experience.create(title: "Running with the Bulls", location:'Pamplona Spain', expeditionist: [Expeditionist.find_by(name:'Travis Abels')])
expere3 = Experience.create(title: "Vacation in Bangkok", location:'Bangkok Thailand', expeditionist: [Expeditionist.find_by(name:'Travis Abels')])
expere4 = Experience.create(title:"Greatest Of the Chineese Walls", location:"China WestSide", expeditionist: [Expeditionist.find_by(name: 'Michonne Belafonte')])
expere5 = Experience.create(title:"Living among the Monk", location:'Missionary-China', expeditionist: [Expeditionist.find_by(name: 'Michonne Belafonte')])
# title content status experience
perspective1 =  Perspective.create(title: '', content: '', status: 0, experience: [Experience.find_by(title:'')])
perspective2 = Perspective.create(title: '', content: '', status: 0, experience: [Experience.find_by(title:'')])
perspective3 = Perspective.create(title: '', content: '', status: 0, experience: [Experience.find_by(title:'')])
perspective4 = Perspective.create(title: '', content: '', status: 0, experience: [Experience.find_by(title:'')])
perspective5 = Perspective.create(title: '', content: '', status: 0, experience: [Experience.find_by(title:'')])
perspective6 = Perspective.create(title: '', content: '', status: 0, experience: [Experience.find_by(title:'')])
perspective7 = Perspective.create(title: '', content: '', status: 0, experience: [Experience.find_by(title:'')])
# title content perspective
comment1 = Comment.create(title: '', content: '', perspective: [Perspective.find_by(title: '')])
comment2 = Comment.create(title: '', content: '', perspective: [Perspective.find_by(title: '')])
comment3 = Comment.create(title: '', content: '', perspective: [Perspective.find_by(title: '')])
