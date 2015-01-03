require 'Faker'

User.create(username: Faker::Name.name, email: 'test@test.com', password: 'test1234')
User.create(username: Faker::Name.name, email: 'h@h.com', password: 'h')
User.create(username: Faker::Name.name, email: 's@s.com', password: 's')
User.create(username: Faker::Name.name, email: 'm@m.com', password: 'm')
User.create(username: Faker::Name.name, email: 'p@p.com', password: 'p')
User.create(username: Faker::Name.name, email: 'l@l.com', password: 'l')
