# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserGroup.destroy_all 
User.destroy_all
Group.destroy_all
Podcast.destroy_all

# users
joe = User.create(name: 'Joe', email: 'Joe@aol.com')
david = User.create(name: 'David', email: 'David@aol.com')
alex = User.create(name: 'Alex', email: 'Alex@aol.com')
chris = User.create(name: 'Chris', email: 'Chris@aol.com')
jess = User.create(name: 'Jess', email: 'Jess@aol.com')
tejas = User.create(name: 'Tejas', email: 'Tejas@aol.com')
joeR = User.create(name: 'Joe R', email: 'JoeR@aol.com')

kyle= User.create(name: 'Kyle', email: 'Kyle@aol.com')
damon = User.create(name: 'Damon', email: 'Damon@aol.com')
stephanie = User.create(name: 'Stephanie', email: 'Stephanie@aol.com')
kat = User.create(name: 'Kat', email: 'Kat@aol.com')
brian = User.create(name: 'Brian', email: 'Brian@aol.com')
kevin = User.create(name: 'Kevin', email: 'Kevin@aol.com')

# groups
gitMoney = Group.create(name: 'Git.Money', description: 'All about money all the time')
teacherTalk = Group.create(name: 'Teacher Talk', description: 'Where teachers come to talk')
generalTalk = Group.create(name: 'General Talk', description: 'When the cats away the mice will play')

# user_groups
joeGitMoney = UserGroup.create(user: joe, group:gitMoney)
davidGitMoney = UserGroup.create(user: david, group:gitMoney)
alexGitMoney = UserGroup.create(user: alex, group:gitMoney)
chrisGitMoney = UserGroup.create(user: chris, group:gitMoney)
jessGitMoney = UserGroup.create(user: jess, group:gitMoney)
tejasGitMoney = UserGroup.create(user: tejas, group:gitMoney)
joeRGitMoney = UserGroup.create(user: joeR, group:gitMoney)


kyleTeacherTalk = UserGroup.create(user: kyle, group:teacherTalk)
damonTeacherTalk = UserGroup.create(user: damon, group:teacherTalk)
stephanieTeacherTalk = UserGroup.create(user: stephanie, group:teacherTalk)
katTeacherTalk = UserGroup.create(user: kat, group:teacherTalk)
brianTeacherTalk = UserGroup.create(user: brian, group:teacherTalk)
kevinTeacherTalk = UserGroup.create(user: kevin, group:teacherTalk)


joeGeneralTalk = UserGroup.create(user: joe, group:generalTalk)
davidGeneralTalk = UserGroup.create(user: david, group:generalTalk)
alexGeneralTalk = UserGroup.create(user: alex, group:generalTalk)
chrisGeneralTalk = UserGroup.create(user: chris, group:generalTalk)
jessGeneralTalk = UserGroup.create(user: jess, group:generalTalk)
tejasGeneralTalk = UserGroup.create(user: tejas, group:generalTalk)
joeRGeneralTalk = UserGroup.create(user: joeR, group:generalTalk)
kyleGeneralTalk = UserGroup.create(user: kyle, group:generalTalk)
damonGeneralTalk = UserGroup.create(user: damon, group:generalTalk)
stephanieGeneralTalk = UserGroup.create(user: stephanie, group:generalTalk)
katGeneralTalk = UserGroup.create(user: kat, group:generalTalk)
brianGeneralTalk = UserGroup.create(user: brian, group:generalTalk)
kevinGeneralTalk = UserGroup.create(user: kevin, group:generalTalk)


# Podcasts - git.money

Podcast.create(episodeName: 'How to Love your Cat', showName: 'Cat Time', url: 'www.cattime.com', comment: 'Wow so much insight', user_group: joeGitMoney)
Podcast.create(episodeName: 'Can you ever have too many monitors?', showName: 'Laptops were meant to stay plugged in', url: 'www.cnet.com', comment: 'More monitors = Happiness', user_group: joeGitMoney)
Podcast.create(episodeName: 'How to be a good Cat Dad', showName: 'Cat Hour', url: 'www.cattime.com/parenttips', comment: 'I cant believe it!', user_group: davidGitMoney)
Podcast.create(episodeName: 'How to build a backend in the 11th hour', showName: 'Crunch time', url: 'www.crunchtime.com', comment: 'Wow it really isnt hard!', user_group: alexGitMoney)
Podcast.create(episodeName: 'Expert Chess Time', showName: 'Chess Time', url: 'www.chesstime.com', comment: 'Bobby Fisher was\'t even good', user_group: chrisGitMoney)
Podcast.create(episodeName: 'Hikes in Colorado', showName: 'Hike Time', url: 'www.hikeCO.com', comment: 'I need a new rain jacket', user_group: jessGitMoney)
Podcast.create(episodeName: 'Every Sport fact ever', showName: 'Sport Stat Hour', url: 'www.sportime.com', comment: 'I knew them already', user_group: tejasGitMoney)
Podcast.create(episodeName: 'Dogs, the only thing that matters?', showName: 'Pet Sitting Weekly', url: 'www.Petsrus.com', comment: 'Does anyone think 4 dogs is too many dogs?', user_group: joeRGitMoney)


Podcast.create(episodeName: '10 Showtunes you forgot about!', showName: 'ShowTunes 4 life', url: 'www.showtunes.com', comment: 'I didnt forget about any', user_group: kyleTeacherTalk)
Podcast.create(episodeName: 'New Episode Alert!!', showName: 'Sprint UX', url: 'www.sprintUX.com', comment: 'I swear I really have a podcast', user_group: kyleTeacherTalk)
Podcast.create(episodeName: 'How to become the rails sensei', showName: 'Rails', url: 'www.rails.com', comment: 'I am the rails master', user_group: damonTeacherTalk)
Podcast.create(episodeName: 'Students: Friend or foe?', showName: 'Teacher Life', url: 'www.teach.com', comment: 'The jury is still out', user_group: stephanieTeacherTalk)
Podcast.create(episodeName: 'How many license plates did you see?', showName: 'RoadTrips', url: 'www.roadtrip.com', comment: 'I saw them all', user_group: katTeacherTalk)
Podcast.create(episodeName: 'The Rarest Belt Buckles', showName: 'BeltBuckles', url: 'www.BeltBuckles.com', comment: 'I own most of these', user_group: brianTeacherTalk)
Podcast.create(episodeName: 'Hooligan Riding', showName: 'MotoMike', url: 'www.moto.com', comment: 'kill all tires' , user_group: kevinTeacherTalk)


Podcast.create(episodeName: 'Built on Sand', showName: '99% Invisible', url: 'https://open.spotify.com/episode/0F9SpY7D4dADTxADfCZTrH?si=lQ1hdpHaT_2OnIxzsy1WtQ', comment: 'wow sand!', user_group: joeGeneralTalk)
Podcast.create(episodeName: 'Software Media', showName: 'Software Engineering Daily', url: 'https://open.spotify.com/episode/2AwpADYWbHYDMI7D1d00NH?si=m3RTBj3mQFa6IVxwnuMTWQ', comment: 'Media so hot', user_group: davidGitMoney)
Podcast.create(episodeName: 'Back to the Experience', showName: 'SprintUX', url: 'https://open.spotify.com/episode/2y69gW9b1tjmUX4JJoBrxy?si=jMGat8zvRCuO-vl9e6G2Fg', comment: 'New Episode Alert!', user_group: kyleGeneralTalk)
Podcast.create(episodeName: 'Just you and a Designer', showName: 'SprintUX', url: 'https://open.spotify.com/episode/4MmyfVsQ69tewsmNdJnvYw?si=x4GrpC0vSBugMGdTSG-uyA', comment: 'I have the best boss in the world!', user_group: damonGeneralTalk)
Podcast.create(episodeName: 'The Crimes of Elizabeth Wettlaufer p1', showName: 'Canadian True Crime', url: 'https://open.spotify.com/episode/3DAqCzQDDZ4nQ87CeFhbaO?si=6tls9y6QSuOzgSatOIfm1w', comment: 'I jus love murder ...... mysteries!', user_group: alexGeneralTalk)

