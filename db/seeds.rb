require 'Faker'

5User.create(username: Faker::Name.name, email: 'test@test.com', password: 'test1234')
