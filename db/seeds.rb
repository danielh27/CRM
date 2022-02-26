user1 = User.find_or_initialize_by(email: 'admin@gmail.com')
user1.password = '291ABASD932'
user1.password_confirmation = '291ABASD932'
user1.save

user2 = User.find_or_initialize_by(email: 'usuario1@gmail.com')
user2.password = '291ABASD934'
user2.password_confirmation = '291ABASD934'
user2.save

user3 = User.find_or_initialize_by(email: 'usuario2@gmail.com')
user3.password = '281ABASD932'
user3.password_confirmation = '281ABASD932'
user3.save
