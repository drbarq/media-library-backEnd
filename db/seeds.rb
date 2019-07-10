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
joe = User.create(name: 'joe', email: 'aol.com')
jeff = User.create(name: 'jeff', email: 'jeff@aol.com')
jerry = User.create(name: 'jerry', email: 'jerry@aol.com')
susan = User.create(name: 'susan', email: 'susan@aol.com')
freddy = User.create(name: 'freddy', email: 'fman@aol.com')

david = User.create(name: 'david', email: 'aol.com')
alex = User.create(name: 'alex', email: 'jeff@aol.com')
chris = User.create(name: 'chris', email: 'jerry@aol.com')
damon = User.create(name: 'damon', email: 'susan@aol.com')
stephanie = User.create(name: 'stephanie', email: 'fman@aol.com')


chat = Group.create(name: 'chat group', description: 'cool chat')
talkytalk = Group.create(name: 'best chat group', description: 'best chat')

UserGroup.create(user: joe, group:chat)
UserGroup.create(user: jeff, group:chat)
UserGroup.create(user: jerry, group:chat)
UserGroup.create(user: susan, group:chat)
UserGroup.create(user: freddy, group:chat)

UserGroup.create(user: david, group:talkytalk)
UserGroup.create(user: alex, group:talkytalk)
UserGroup.create(user: chris, group:talkytalk)
UserGroup.create(user: damon, group:talkytalk)
UserGroup.create(user: stephanie, group:talkytalk)


Podcast.create(title: 'the really good cast', author: 'not me', url: 'www.aol.com', comment: 'good', user: jeff)
Podcast.create(title: 'best good cast', author: 'not me', url: 'www.aol.com', comment: 'good', user: jerry)
Podcast.create(title: 'good good cast', author: 'not me', url: 'www.aol.com', comment: 'good', user: freddy)
Podcast.create(title: 'awesome good cast', author: 'not me', url: 'www.aol.com', comment: 'good', user: susan)
Podcast.create(title: 'the best good cast', author: 'not me', url: 'www.aol.com', comment: 'good', user: joe)
Podcast.create(title: 'really bad cast', author: 'not me', url: 'www.aol.com', comment: 'good', user: joe)
Podcast.create(title: 'worst cast', author: 'not me', url: 'www.aol.com', comment: 'good', user: joe)

Podcast.create(title: 'News topics', author: 'not me', url: 'www.aol.com', comment: 'good', user: david)
Podcast.create(title: 'Sports Topics', author: 'not me', url: 'www.aol.com', comment: 'good', user: alex)
Podcast.create(title: 'Tech Topics', author: 'not me', url: 'www.aol.com', comment: 'good', user: chris)
Podcast.create(title: 'Cat Topics', author: 'not me', url: 'www.aol.com', comment: 'good', user: chris)
Podcast.create(title: 'Dog Topics', author: 'not me', url: 'www.aol.com', comment: 'good', user: stephanie)
Podcast.create(title: 'Bike Topics', author: 'not me', url: 'www.aol.com', comment: 'good', user: damon)
Podcast.create(title: 'Travel Topics', author: 'not me', url: 'www.aol.com', comment: 'good', user: damon)