exp1 = Expeditionist.create{name: 'Sir Charles Waldorf', niche: 'master sommlier', experiences: [Experience.find_by(title: "Sangiovese Wine Tasting")]}
exp2 = Expeditionist.create{name: 'Travis Abels', niche: 'adrenaline junkie', , experiences: [Experience.find_by(title: "Running with the Bull's"), Experience.find_by(title: "Vacation in Bangkok")], }
exp3 = Expeditionist.create{name: 'Michonne Belafonte', niche: 'culturalist', }
