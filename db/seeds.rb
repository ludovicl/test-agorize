# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


football = Skill.create!(name: 'Football')
basketball = Skill.create(name: 'Basketball')
foot = Skill.create(name: 'Foot', parent_id: football.id)
basket = Skill.create(name: 'Basket', parent_id: basketball.id)
socker = Skill.create(name: 'Socker', parent_id: football.id)


user_100 = User.create(points: 100)
user_200 = User.create(points: 200)
user_100_2 = User.create(points: 100)
user_50 = User.create(points: 50)
user_10 = User.create(points: 10)

SkillsUser.create(user: user_100, skill: football)
SkillsUser.create(user: user_200, skill: football)
SkillsUser.create(user: user_100_2, skill: foot)
SkillsUser.create(user: user_50, skill: basketball)
SkillsUser.create(user: user_10, skill: socker)
